#ifndef _LOOKUPTABLE_H_
#define _LOOKUPTABLE_H_

/*
*  LookupTable.h:
*  Lookup operation, for embeddings
*
*  Created on: Apr 22, 2017
*      Author: mszhang
*/

#include "SparseParam.h"
#include "MyLib.h"
#include "Alphabet.h"
#include "Node.h"
#include "Graph.h"
#include "ModelUpdate.h"

class LookupTable {
public:
	PAlphabet elems;
	SparseParam E;
	bool bFineTune;
	int nDim;
	int nVSize;
	int nUNKId;

public:

	LookupTable() {
		nVSize = 0;
		nDim = 0;
		elems = NULL;
		nUNKId = -1;
		bFineTune = false;
	}

	//random initialization
	inline void initial(PAlphabet alpha, int dim, bool constant, bool bFineTune = true) {
		elems = alpha;
		nVSize = elems->size();
		nUNKId = elems->from_string(unknownkey);
		std::cout << "unknown id" << nUNKId << std::endl;
		initialWeights(dim, constant, bFineTune);
	}

	//initialization by pre-trained embeddings
	inline bool initial(PAlphabet alpha, const string& inFile, bool bFineTune = true, bool bNormalize = true) {
		elems = alpha;
		nVSize = elems->size();
		nUNKId = elems->from_string(unknownkey);
		return initialWeights(inFile, bFineTune, bNormalize);
	}

	inline void initialWeights(int dim, bool constant, bool tune) {
		if (nVSize == 0) {
			std::cout << "please check the alphabet" << std::endl;
			return;
		}
		nDim = dim;
		if (constant)
			E.initial_constant(nDim, nVSize);
		else
			E.initial(nDim, nVSize);
		//E.val.norm2one();
		bFineTune = tune;
	}

	// default should be fineTune, just for initialization
	inline bool initialWeights(const string& inFile, bool tune, bool normalize = true) {
		if (nVSize == 0 || !elems->is_fixed()) {
			std::cout << "please check the alphabet" << std::endl;
			return false;
		}

		static ifstream inf;
		if (inf.is_open()) {
			inf.close();
			inf.clear();
		}
		inf.open(inFile.c_str());
		if (!inf.is_open()) {
			cerr << "open word embedding file error!" << endl;
		}

		static string strLine, curWord;
		static int wordId;

		static vector<string> sLines;
		sLines.clear();
		while (1) {
			if (!my_getline(inf, strLine)) {
				break;
			}
			if (!strLine.empty()) {
				sLines.push_back(strLine);
			}
		}
		inf.close();
		if (sLines.size() == 0) {
			return false;
		}

		//find the first line, decide the wordDim;
		static vector<string> vecInfo;
		split_bychar(sLines[0], vecInfo, ' ');
		nDim = vecInfo.size() - 1;

		E.initial(nDim, nVSize);
		E.val = 0;

		std::cout << "word embedding dim is " << nDim << std::endl;

		bool bHasUnknown = false;
		unordered_set<int> indexers;
		NRVec<dtype> sum(nDim);
		sum = 0.0;
		int count = 0;
		for (int idx = 0; idx < sLines.size(); idx++) {
			split_bychar(sLines[idx], vecInfo, ' ');
			if (vecInfo.size() != nDim + 1) {
				std::cout << "error embedding file" << std::endl;
			}
			curWord = vecInfo[0];
			//we assume the keys are normalized
			wordId = elems->from_string(curWord);
			if (wordId >= 0) {
				count++;
				if (nUNKId == wordId) {
					bHasUnknown = true;
				}
				indexers.insert(wordId);

				for (int idy = 0; idy < nDim; idy++) {
					dtype curValue = atof(vecInfo[idy + 1].c_str());
					sum[idy] += curValue;
					E.val[wordId][idy] += curValue;
				}
			}
		}

		if (nUNKId >= 0 && !bHasUnknown) {
			for (int idx = 0; idx < nDim; idx++) {
				E.val[nUNKId][idx] = 0; //sum[idx] / count;
			}
			indexers.insert(nUNKId);
			count++;
			std::cout << unknownkey << " not found, using averaged value to initialize." << std::endl;
		}

		int totalnum = 0;
		double sumAll = 0.0;
		for (int id = 0; id < nVSize; id++) {
			if (indexers.find(id) != indexers.end()) {
				for (int idy = 0; idy < nDim; idy++) {
					sumAll += E.val[id][idy];
					totalnum++;
				}
			}
		}
		
		double aver = sumAll / totalnum;
		double devi = 0.0;
		for (int id = 0; id < nVSize; id++) {
			if (indexers.find(id) != indexers.end()) {
				for (int idy = 0; idy < nDim; idy++) {
					devi += (E.val[id][idy] - aver)*(E.val[id][idy] - aver);
				}
			}
		}
		devi = devi / totalnum;
		devi = sqrt(devi);
		E.val.mat() = E.val.mat() / devi;
		
		int oovWords = 0;
		for (int id = 0; id < nVSize; id++) {
			if (indexers.find(id) == indexers.end()) {
				oovWords++;
				for (int idy = 0; idy < nDim; idy++) {
					E.val[id][idy] = 0;// nUNKId >= 0 ? E.val[nUNKId][idy] : sum[idy] / count;
				}
			}
		}

		std::cout << "OOV num is " << oovWords << ", total num is " << nVSize << ", embedding oov ratio is " << oovWords * 1.0 / nVSize << std::endl;
		std::cout << "unknown id" << nUNKId << std::endl;
		bFineTune = tune;
		/*if (normalize) {
		  E.val.norm2one();
		}*/
		return true;
	}

	inline void exportAdaParams(ModelUpdate& ada) {
		if (bFineTune) {
			ada.addParam(&E);
		}
	}


	inline int getElemId(const string& strFeat) {
		return elems->from_string(strFeat);
	}

	inline void save(std::ofstream &os) const {
		E.save(os);
		os << bFineTune << std::endl;
		os << nDim << std::endl;
		os << nVSize << std::endl;
		os << nUNKId << std::endl;
	}

	//set alpha directly
	inline void load(std::ifstream &is, PAlphabet alpha, AlignedMemoryPool* mem = NULL) {
		E.load(is, mem);
		is >> bFineTune;
		is >> nDim;
		is >> nVSize;
		is >> nUNKId;
		elems = alpha;
	}

};


class LookupNode : public Node {
public:
	LookupTable* param;
	int xid;

public:
	LookupNode() {
		xid = -1;
		param = NULL;
		node_type = "lookup";
	}

	inline void setParam(LookupTable* paramInit) {
		param = paramInit;
	}

	inline void clearValue() {
		Node::clearValue();
		xid = -1;
	}

public:
	//notice the output
	//this should be leaf nodes
	void forward(Graph *cg, const string& strNorm) {
		assert(param != NULL);
		xid = param->getElemId(strNorm);
		if (xid < 0 && param->nUNKId >= 0) {
			xid = param->nUNKId;
		}
		degree = 0;
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		return Node::typeEqual(other);
	}

	// for which do no require merge
public:
	void compute() {
		if (xid >= 0) {
			param->E.value(xid, val);
		}
		else {
			if (param->bFineTune)std::cout << "Caution: unknown words are not modeled !" << std::endl;
			val.zero();
		}
	}

	void backward() {
		assert(param != NULL);
		if (xid == param->nUNKId || (xid >= 0 && param->bFineTune)) {
			param->E.loss(xid, loss);
		}
	}
};


class LookupExecute :public Execute {

public:
	inline void  forward() {
		int count = batch.size();

		for (int idx = 0; idx < count; idx++) {
			LookupNode* ptr = (LookupNode*)batch[idx];
			ptr->compute();
		}
	}

	inline void backward() {
		int count = batch.size();
		for (int idx = 0; idx < count; idx++) {
			LookupNode* ptr = (LookupNode*)batch[idx];
			ptr->backward();
		}
	}
};


inline PExecute LookupNode::generate() {
	LookupExecute* exec = new LookupExecute();
	exec->batch.push_back(this);
	return exec;
}

#endif /*_LOOKUPTABLE_H*/
