/*
 * SparseParam.h
 *
 *  Created on: Jul 25, 2016
 *      Author: mason
 */

#ifndef SPARSEPARAM_H_
#define SPARSEPARAM_H_

#include "BaseParam.h"

 // Notice: aux_square is an aux_squareiliary variable to help parameter updating
 // The in-out dimension definiation is different with dense parameters.
class SparseParam : public BaseParam {
public:
	Tensor2D aux_square;
	Tensor2D aux_mean;
	unordered_set<int> indexers;
	NRVec<int> last_update;


	// allow sparse and dense parameters have different parameter initialization methods
	/*inline void initial(int outDim, int inDim, AlignedMemoryPool* mem = NULL) {
		//not in the aligned memory pool
		val.init(outDim, inDim);
		dtype bound = sqrt(3.0 / (outDim));
		val.random(bound);
		grad.init(outDim, inDim);
		aux_square.init(outDim, inDim);
		aux_mean.init(outDim, inDim);
		indexers.clear();
		last_update.resize(inDim);
		last_update = 0;
	}*/

	inline void initial(int outDim, int inDim, AlignedMemoryPool* mem = NULL) {
		val.init(outDim, inDim, mem);
		val.mat() = val.mat().unaryExpr(ptr_fun(normal_distribution_0));
		val.mat() = val.mat() / sqrt(outDim);

		grad.init(outDim, inDim, mem);
		aux_square.init(outDim, inDim, mem);
		aux_mean.init(outDim, inDim, mem);
		
		indexers.clear();
		last_update.resize(inDim);
		last_update = 0;
	}

	inline void initial_constant(int outDim, int inDim, AlignedMemoryPool* mem = NULL) {
		val.init(outDim, inDim, mem);
		val = 0;

		grad.init(outDim, inDim, mem);
		aux_square.init(outDim, inDim, mem);
		aux_mean.init(outDim, inDim, mem);

		indexers.clear();
		last_update.resize(inDim);
		last_update = 0;
	}
	
	inline void clearGrad() {
		unordered_set<int>::iterator it;
		for (it = indexers.begin(); it != indexers.end(); ++it) {
			int index = *it;
			for (int idx = 0; idx < grad.row; idx++) {
				grad[index][idx] = 0;
			}
		}
		indexers.clear();
	}

	inline int outDim() {
		return val.row;
	}

	inline int inDim() {
		return val.col;
	}

	inline void updateAdagrad(dtype alpha, dtype reg, dtype eps) {
		unordered_set<int>::iterator it;
		for (it = indexers.begin(); it != indexers.end(); ++it) {
			int index = *it;
			for (int idx = 0; idx < grad.row; idx++) {
				grad[index][idx] = grad[index][idx] + val[index][idx] * reg;
				aux_square[index][idx] = aux_square[index][idx] + grad[index][idx] * grad[index][idx];
				val[index][idx] = val[index][idx] - grad[index][idx] * alpha / sqrt(aux_square[index][idx] + eps);
			}
		}
	}

	inline void updateAdam(dtype belta1, dtype belta2, dtype alpha, dtype reg, dtype eps, int wordnum) {
		grad.mat() = grad.mat() / wordnum;
		unordered_set<int>::iterator it;
		dtype lr_t;
		for (it = indexers.begin(); it != indexers.end(); ++it) {
			int index = *it;
			for (int idx = 0; idx < grad.row; idx++) {
				grad[index][idx] = grad[index][idx] + val[index][idx] * reg;
				aux_mean[index][idx] = belta1 * aux_mean[index][idx] + (1 - belta1) * grad[index][idx];
				aux_square[index][idx] = belta2 * aux_square[index][idx] + (1 - belta2) * grad[index][idx] * grad[index][idx];
				lr_t = alpha * sqrt(1 - pow(belta2, last_update[index] + 1)) / (1 - pow(belta1, last_update[index] + 1));
				val[index][idx] = val[index][idx] - aux_mean[index][idx] * lr_t / sqrt(aux_square[index][idx] + eps);
			}
			last_update[index]++;
		}
	}

	inline void randpoint(int& idx, int &idy) {
		//select indexes randomly		
		std::vector<int> idRows, idCols;
		idRows.clear();
		idCols.clear();
		unordered_set<int>::iterator it;
		for (it = indexers.begin(); it != indexers.end(); ++it) {
			idCols.push_back(*it);
		}

		for (int i = 0; i < val.row; i++) {
			idRows.push_back(i);
		}

		random_shuffle(idRows.begin(), idRows.end());
		random_shuffle(idCols.begin(), idCols.end());

		idx = idCols[0];
		idy = idRows[0];
	}

	inline dtype squareGradNorm() {
		unordered_set<int>::iterator it;
		dtype sumNorm = 0.0;
		for (it = indexers.begin(); it != indexers.end(); ++it) {
			int index = *it;
			for (int idx = 0; idx < val.row; idx++) {
				sumNorm += grad[index][idx] * grad[index][idx];
			}
		}

		return sumNorm;
	}

	inline void rescaleGrad(dtype scale) {
		unordered_set<int>::iterator it;
		for (it = indexers.begin(); it != indexers.end(); ++it) {
			int index = *it;
			for (int idx = 0; idx < val.row; idx++) {
				grad[index][idx] = grad[index][idx] * scale;
			}
		}
	}

	inline void value(const int& featId, Tensor1D& out) {
		if (out.dim != val.row) {
			std::cout << "warning: output dim not equal lookup param dim." << std::endl;
		}
		for (int idx = 0; idx < val.row; idx++) {
			out[idx] = val[featId][idx];
		}
	}

	inline void value(const vector<int>& featIds, Tensor1D& out) {
		if (out.dim != val.row) {
			std::cout << "warning: output dim not equal lookup param dim." << std::endl;
		}
		int featNum = featIds.size();
		int featId;
		for (int i = 0; i < featNum; i++) {
			featId = featIds[i];
			for (int idx = 0; idx < val.row; idx++) {
				out[idx] += val[featId][idx];
			}
		}
	}

	inline void loss(const int& featId, const Tensor1D& loss) {
		if (loss.dim != val.row) {
			std::cout << "warning: loss dim not equal lookup param dim." << std::endl;
		}
		indexers.insert(featId);
		for (int idx = 0; idx < val.row; idx++) {
			grad[featId][idx] += loss[idx];
		}
	}

	inline void loss(const vector<int>& featIds, const Tensor1D& loss) {
		if (loss.dim != val.row) {
			std::cout << "warning: loss dim not equal lookup param dim." << std::endl;
		}
		int featNum = featIds.size();
		int featId;
		for (int i = 0; i < featNum; i++) {
			featId = featIds[i];
			indexers.insert(featId);
			for (int idx = 0; idx < val.row; idx++) {
				grad[featId][idx] += loss[idx];
			}
		}
	}

	inline void save(std::ofstream &os)const {
		val.save(os);
		aux_square.save(os);
		aux_mean.save(os);
		os << val.col << std::endl;
		for (int idx = 0; idx < val.col; idx++) {
			os << last_update[idx] << std::endl;
		}
	}

	inline void load(std::ifstream &is, AlignedMemoryPool* mem = NULL) {
		val.load(is);
		aux_square.load(is);
		aux_mean.load(is);
		int curInDim;
		is >> curInDim;
		last_update.resize(curInDim);
		for (int idx = 0; idx < curInDim; idx++) {
			is >> last_update[idx];
		}
	}

};

#endif /* SPARSEPARAM_H_ */
