#ifndef BIOP_H_
#define BIOP_H_

/*
*  BiOP.h:
*  a simple feed forward neural operation, unary input.
*
*/

#include "Param.h"
#include "MyLib.h"
#include "Node.h"
#include "Graph.h"
#include "ModelUpdate.h"

class BiaffineParams {
public:
	vector<Param> W;
	Param b;
	bool bUseB;
	int classDim;

public:
	BiaffineParams() {
		bUseB = true;
		classDim = 0;
	}

	inline void exportAdaParams(ModelUpdate& ada) {
		for (int i = 0; i < classDim; i++) {
			ada.addParam(&W[i]);
		}
		if (bUseB) {
			ada.addParam(&b);
		}
	}

	inline void initial(int nISize1, int nISize2, bool useB = true, int classDims = 1, AlignedMemoryPool* mem = NULL) {
		classDim = classDims;
		W.resize(classDim);
		for (int i = 0; i < classDim; i++) {
			W[i].initial(nISize1, nISize2, mem);
		}
		bUseB = useB;
		if (bUseB) {
			b.initial_constant(classDim, 1, mem);
		}
	}

	inline void save(std::ofstream &os) const {
		os << bUseB << std::endl;
		for (int i = 0; i < classDim; i++)
			W[i].save(os);
		if (bUseB) {
			b.save(os);
		}
	}

	inline void load(std::ifstream &is, AlignedMemoryPool* mem = NULL) {
		is >> bUseB;
		for (int i = 0; i < classDim; i++)
			W[i].load(is, mem);
		if (bUseB) {
			b.load(is, mem);
		}
	}
};

class BiaffineNode : public Node {
public:
	vector<PNode> in1, in2;
	Tensor2D x1, x2;//concat nodes in in1 by y

	bool expandIn1, expandIn2;
	BiaffineParams* param;
	int nSize;
	int classDim;
	int inDim1, inDim2;

	vector<Tensor2D> vals;
	vector<Tensor2D> losses;
	vector<Tensor2D> y1;

public:
	BiaffineNode() : Node() {
		nSize = 0;
		classDim = 0;
		in1.clear();
		in2.clear();
		vals.clear();
		losses.clear();
		param = NULL;
		node_type = "biaffine";
	}

	inline void setParam(BiaffineParams* paramInit, bool expandIns1, bool expandIns2) {
		param = paramInit;
		classDim = paramInit->classDim;
		expandIn1 = expandIns1;
		expandIn2 = expandIns2;
	}

	inline void clearValue() {
		Node::clearValue();
		in1.clear();
		in2.clear();
		vals.clear();
		losses.clear();
	}

	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		this->dim = dim;
		vals.resize(classDim);
		losses.resize(classDim);
		for (int i = 0; i < classDim; i++) {
			vals[i].init(dim, dim);
			losses[i].init(dim, dim);
		}
		parents.clear();
	}

public:
	void forward(Graph *cg, vector<PNode> x1, vector<PNode> x2) {
		assert(x1.size() == x2.size());
		nSize = x1.size();
		for (int i = 0; i < nSize; i++) {
			in1.push_back(x1[i]);
			in2.push_back(x2[i]);
		}
		degree = in1.size() + in2.size();
		for (int i = 0; i < nSize; i++) {
			in1[i]->parents.push_back(this);
			in2[i]->parents.push_back(this);
		}
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		bool result = Node::typeEqual(other);
		if (!result) return false;
		BiaffineNode* conv_other = (BiaffineNode*)other;
		if (param == conv_other->param) {
			return true;
		}
		else
			return false;
	}
public:
	inline void compute() {
		inDim1 = in1[0]->dim;
		inDim2 = in2[0]->dim;
		x1.init(inDim1 + (expandIn1 ? 1 : 0), nSize);
		x2.init(inDim2 + (expandIn2 ? 1 : 0), nSize);
		y1.resize(classDim);
		for (int i = 0; i < classDim; i++) {
			y1[i].init(nSize, inDim2 + (expandIn2 ? 1 : 0));
		}
		for (int i = 0; i < nSize; ++i) {
			for (int j = 0; j < inDim1; j++)
				x1[i][j] = in1[i]->val[j];
			if (expandIn1)
				x1[i][inDim1] = 1;

			for (int j = 0; j < inDim2; j++)
				x2[i][j] = in2[i]->val[j];
			if (expandIn2)
				x2[i][inDim2] = 1;
		}
		for (int i = 0; i < classDim; i++) {
			y1[i].mat() = x1.mat().transpose() * param->W[i].val.mat();
			vals[i].mat() = y1[i].mat() * x2.mat();
			if (param->bUseB) {
				for (int idx = 0; idx < nSize; idx++)
					for (int idy = 0; idy < nSize; idy++)
						vals[i].mat()(idx, idy) += param->b.val.mat()(i, 0);
			}
		}
	}

	inline void backward() {
		vector<Tensor2D> lx1, lx2, ly1;
		lx1.resize(classDim);
		lx2.resize(classDim);
		ly1.resize(classDim);
		for (int i = 0; i < classDim; i++) {
			lx1[i].init(inDim1 + (expandIn1 ? 1 : 0), nSize);
			lx2[i].init(inDim2 + (expandIn2 ? 1 : 0), nSize);
			ly1[i].init(nSize, inDim2 + (expandIn2 ? 1 : 0));
		}

		for (int i = 0; i < classDim; i++) {
			lx2[i].mat() = y1[i].mat().transpose() * losses[i].mat();
			ly1[i].mat() = losses[i].mat() * x2.mat().transpose();
			lx1[i].mat() = param->W[i].val.mat() * ly1[i].mat().transpose();
			param->W[i].grad.mat() += x1.mat() * ly1[i].mat();
		}

		if (param->bUseB) {
			for (int i = 0; i < classDim; i++) {
				for (int idx = 0; idx < nSize; idx++) {
					for (int idy = 0; idy < nSize; idy++)
						param->b.grad.v[i] += losses[i][idx][idy];
				}
			}
		}
		for (int i = 0; i < classDim; i++) {
			for (int idx = 0; idx < nSize; idx++) {
				for (int idy = 0; idy < inDim1; idy++) {
					in1[idx]->loss[idy] += lx1[i][idx][idy];
				}
				for (int idy = 0; idy < inDim2; idy++) {
					in2[idx]->loss[idy] += lx2[i][idx][idy];
				}
			}
		}
	}
};

class BiaffineExecute :public Execute {
public:
	inline void  forward() {
		int count = batch.size();

		for (int idx = 0; idx < count; idx++) {
			BiaffineNode* ptr = (BiaffineNode*)batch[idx];
			ptr->compute();
		}
	}

	inline void backward() {
		int count = batch.size();
		for (int idx = 0; idx < count; idx++) {
			BiaffineNode* ptr = (BiaffineNode*)batch[idx];
			ptr->backward();
		}
	}
};

inline PExecute BiaffineNode::generate() {
	BiaffineExecute* exec = new BiaffineExecute();
	exec->batch.push_back(this);
	return exec;
};

class BiParams {
public:
	Param W1;
	Param W2;
	Param b;
	bool bUseB;

public:
	BiParams() {
		bUseB = true;
	}

	inline void exportAdaParams(ModelUpdate& ada) {
		ada.addParam(&W1);
		ada.addParam(&W2);
		if (bUseB) {
			ada.addParam(&b);
		}
	}

	inline void initial(int nISize1, int nISize2, int nOSize, bool useB = true, AlignedMemoryPool* mem = NULL) {
		W1.initial(nOSize, nISize1, mem);
		W2.initial(nOSize, nISize2, mem);
		bUseB = useB;
		if (bUseB) {
			b.initial_constant(nOSize, 1, mem);
		}
	}

	inline void save(std::ofstream &os) const {
		os << bUseB << std::endl;
		W1.save(os);
		W2.save(os);
		if (bUseB) {
			b.save(os);
		}
	}

	inline void load(std::ifstream &is, AlignedMemoryPool* mem = NULL) {
		is >> bUseB;
		W1.load(is, mem);
		W2.load(is, mem);
		if (bUseB) {
			b.load(is, mem);
		}
	}
};
class BiNode : public Node {
public:
	PNode in1, in2;
	BiParams* param;
	dtype(*activate)(const dtype&);   // activation function
	dtype(*derivate)(const dtype&, const dtype&);

public:
	BiNode() : Node() {
		in1 = NULL;
		in2 = NULL;
		param = NULL;
		node_type = "bi";
	}

	inline void setParam(BiParams* paramInit) {
		param = paramInit;
	}

	inline void setFunctions(dtype(*f)(const dtype&), dtype(*f_deri)(const dtype&, const dtype&)) {
		activate = f;
		derivate = f_deri;
	}

	inline void clearValue() {
		Node::clearValue();
		in1 = NULL;
		in2 = NULL;
	}

	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		Node::init(dim, mem);
	}

public:
	void forward(Graph *cg, PNode x1, PNode x2) {
		in1 = x1;
		in2 = x2;
		degree = 2;
		in1->parents.push_back(this);
		in2->parents.push_back(this);
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		bool result = Node::typeEqual(other);
		if (!result) return false;
		BiNode* conv_other = (BiNode*)other;
		if (param == conv_other->param && activate == conv_other->activate && derivate == conv_other->derivate) {
			return true;
		}
		else
			return false;
	}
};

class BiExecute :public Execute {
public:
	Tensor2D x1, x2, ty, y;
	int inDim1, inDim2, outDim, count;
	BiParams* param;
	dtype(*activate)(const dtype&);   // activation function
	dtype(*derivate)(const dtype&, const dtype&);

public:
	inline void  forward() {
		count = batch.size();
		x1.init(inDim1, count);
		x2.init(inDim2, count);
		ty.init(outDim, count);
		y.init(outDim, count);
		for (int idx = 0; idx < count; idx++) {
			BiNode* ptr = (BiNode*)batch[idx];
			for (int idy = 0; idy < inDim1; idy++) {
				x1[idx][idy] = ptr->in1->val[idy];
			}
			for (int idy = 0; idy < inDim2; idy++) {
				x2[idx][idy] = ptr->in2->val[idy];
			}
		}
		ty.mat() = param->W1.val.mat() * x1.mat() + param->W2.val.mat() * x2.mat();

		if (param->bUseB) {
			for (int idx = 0; idx < count; idx++) {
				for (int idy = 0; idy < outDim; idy++) {
					ty[idx][idy] += param->b.val.v[idy];
				}
			}
		}
		y.vec() = ty.vec().unaryExpr(ptr_fun(activate));

		for (int idx = 0; idx < count; idx++) {
			BiNode* ptr = (BiNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ptr->val[idy] = y[idx][idy];
			}
		}
	}

	inline void backward() {
		Tensor2D lx1, lx2, ly, lty;
		lx1.init(inDim1, count);
		lx2.init(inDim2, count);
		ly.init(outDim, count);
		lty.init(outDim, count);
		for (int idx = 0; idx < count; idx++) {
			BiNode* ptr = (BiNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ly[idx][idy] = ptr->loss[idy];
			}
		}
		lty.vec() = ly.vec() * ty.vec().binaryExpr(y.vec(), ptr_fun(derivate));
		param->W1.grad.mat() += lty.mat() * x1.mat().transpose();
		lx1.mat() += param->W1.val.mat().transpose() * lty.mat();

		param->W2.grad.mat() += lty.mat() * x2.mat().transpose();
		lx2.mat() += param->W2.val.mat().transpose() * lty.mat();

		if (param->bUseB) {
			for (int idx = 0; idx < count; idx++) {
				for (int idy = 0; idy < outDim; idy++) {
					param->b.grad.v[idy] += lty[idx][idy];
				}
			}
		}
		for (int idx = 0; idx < count; idx++) {
			BiNode* ptr = (BiNode*)batch[idx];
			for (int idy = 0; idy < inDim1; idy++) {
				ptr->in1->loss[idy] += lx1[idx][idy];
			}
			for (int idy = 0; idy < inDim2; idy++) {
				ptr->in2->loss[idy] += lx2[idx][idy];
			}
		}
	}
};
inline PExecute BiNode::generate() {
	BiExecute* exec = new BiExecute();
	exec->batch.push_back(this);
	exec->inDim1 = param->W1.inDim();
	exec->inDim2 = param->W2.inDim();
	exec->outDim = param->W1.outDim();
	exec->param = param;
	exec->activate = activate;
	exec->derivate = derivate;
	return exec;
}

#endif /* BIOP_H_ */
