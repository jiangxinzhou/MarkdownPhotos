#ifndef UNIOP_H_
#define UNIOP_H_

/*
*  UniOP.h:
*  a simple feed forward neural operation, unary input.
*
*  Created on: Apr 22, 2017
*      Author: mszhang
*/

#include "Param.h"
#include "MyLib.h"
#include "Node.h"
#include "Graph.h"
#include "ModelUpdate.h"
#include <iostream>

class UniParams {
public:
	Param W;
	Param b;
	bool bUseB;

public:
	UniParams() {
		bUseB = true;
	}

	inline void exportAdaParams(ModelUpdate& ada) {
		ada.addParam(&W);
		if (bUseB) {
			ada.addParam(&b);
		}
	}

	inline void initial(int nOSize, int nISize, bool useB = true, AlignedMemoryPool* mem = NULL) {
		W.initial(nOSize, nISize, mem);

		bUseB = useB;
		if (bUseB) {
			b.initial_constant(nOSize, 1, mem);
		}
	}

	inline void save(std::ofstream &os) const {
		os << bUseB << std::endl;
		W.save(os);
		if (bUseB) {
			b.save(os);
		}
	}

	inline void load(std::ifstream &is, AlignedMemoryPool* mem = NULL) {
		is >> bUseB;
		W.load(is, mem);
		if (bUseB) {
			b.load(is, mem);
		}
	}
};

// non-linear feed-forward node
// input nodes should be specified by forward function
// for input variables, we exploit column vector,
// which means a concrete input vector x_i is represented by x(0, i), x(1, i), ..., x(n, i)
class UniNode : public Node {
public:
	PNode in;
	UniParams* param;
	dtype(*activate)(const dtype&);   // activation function
	dtype(*derivate)(const dtype&, const dtype&);  // derivation function of activation function

public:
	UniNode() : Node() {
		in = NULL;
		activate = ftanh;
		derivate = dtanh;
		param = NULL;
		node_type = "uni";
	}

	~UniNode() {
		in = NULL;
	}

	inline void setParam(UniParams* paramInit) {
		param = paramInit;
	}

	inline void clearValue() {
		Node::clearValue();
		in = NULL;
	}

	// define the activate function and its derivation form
	inline void setFunctions(dtype(*f)(const dtype&), dtype(*f_deri)(const dtype&, const dtype&)) {
		activate = f;
		derivate = f_deri;
	}

	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		Node::init(dim, mem);
	}

public:
	void forward(Graph *cg, PNode x) {
		in = x;
		degree = 1;
		in->parents.push_back(this);
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		bool result = Node::typeEqual(other);
		if (!result) return false;
		UniNode* conv_other = (UniNode*)other;
		if (param == conv_other->param && activate == conv_other->activate && derivate == conv_other->derivate) {
			return true;
		}
		else
			return false;
	}

};

// non-linear feed-forward node
// input nodes should be specified by forward function
// for input variables, we exploit column vector,
// which means a concrete input vector x_i is represented by x(0, i), x(1, i), ..., x(n, i)
class LinearUniNode : public Node {
public:
	PNode in;
	UniParams* param;

public:
	LinearUniNode() : Node() {
		in = NULL;
		param = NULL;
		node_type = "linearuni";
	}

	inline void setParam(UniParams* paramInit) {
		param = paramInit;
	}

	inline void clearValue() {
		Node::clearValue();
		in = NULL;
	}


	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		Node::init(dim, mem);
	}

public:
	void forward(Graph *cg, PNode x) {
		in = x;
		degree = 1;
		in->parents.push_back(this);
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		bool result = Node::typeEqual(other);
		if (!result) return false;
		LinearUniNode* conv_other = (LinearUniNode*)other;
		if (param == conv_other->param) {
			return true;
		}
		else
			return false;
	}
};

// non-linear feed-forward node
// input nodes should be specified by forward function
// for input variables, we exploit column vector,
// which means a concrete input vector x_i is represented by x(0, i), x(1, i), ..., x(n, i)
class LinearNode : public Node {
public:
	PNode in;
	UniParams* param;

public:
	LinearNode() : Node() {
		in = NULL;
		param = NULL;
		node_type = "linear";
	}


	inline void setParam(UniParams* paramInit) {
		param = paramInit;
	}

	inline void clearValue() {
		Node::clearValue();
		in = NULL;
	}


	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		Node::init(dim, mem);
	}

public:
	void forward(Graph *cg, PNode x) {
		in = x;
		degree = 1;
		in->parents.push_back(this);
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		bool result = Node::typeEqual(other);
		if (!result) return false;
		LinearNode* conv_other = (LinearNode*)other;
		if (param == conv_other->param) {
			return true;
		}
		else
			return false;
	}
};

class UniExecute :public Execute {
public:
	Tensor2D x, ty, y, b;
	int inDim, outDim;
	UniParams* param;
	dtype(*activate)(const dtype&);   // activation function
	dtype(*derivate)(const dtype&, const dtype&);  // derivation function of activation function

public:
	~UniExecute() {
		param = NULL;
		activate = NULL;
		derivate = NULL;
		inDim = outDim = 0;
	}


public:
	inline void  forward() {
		int count = batch.size();
		x.init(inDim, count);
		b.init(outDim, count);
		ty.init(outDim, count);
		y.init(outDim, count);


		for (int idx = 0; idx < count; idx++) {
			UniNode* ptr = (UniNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				x[idx][idy] = ptr->in->val[idy];
			}
			if (param->bUseB) {
				for (int idy = 0; idy < outDim; idy++) {
					b[idx][idy] = param->b.val.v[idy];
				}
			}
		}
		ty.mat() = param->W.val.mat() * x.mat();

		if (param->bUseB) {
			ty.vec() = ty.vec() + b.vec();
		}

		y.vec() = ty.vec().unaryExpr(ptr_fun(activate));
		std::ofstream fout("y");
		y.save(fout);

		for (int idx = 0; idx < count; idx++) {
			UniNode* ptr = (UniNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ptr->val[idy] = y[idx][idy];
			}
		}
	}

	inline void backward() {
		int count = batch.size();
		Tensor2D lx, lty, ly;
		lx.init(inDim, count);
		lty.init(outDim, count);
		ly.init(outDim, count);

		for (int idx = 0; idx < count; idx++) {
			UniNode* ptr = (UniNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ly[idx][idy] = ptr->loss[idy];
			}
		}

		lty.vec() = ly.vec() * ty.vec().binaryExpr(y.vec(), ptr_fun(derivate));

		param->W.grad.mat() += lty.mat() * x.mat().transpose();

		if (param->bUseB) {
			for (int idx = 0; idx < count; idx++) {
				for (int idy = 0; idy < outDim; idy++) {
					param->b.grad.v[idy] += lty[idx][idy];
				}
			}
		}

		lx.mat() += param->W.val.mat().transpose() * lty.mat();

		for (int idx = 0; idx < count; idx++) {
			UniNode* ptr = (UniNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ptr->in->loss[idy] += lx[idx][idy];
			}
		}
	}
};

class LinearUniExecute :public Execute {
public:
	Tensor2D x, y, b;
	int inDim, outDim, count;
	UniParams* param;

public:
	inline void  forward() {
		count = batch.size();
		x.init(inDim, count);
		b.init(outDim, count);
		y.init(outDim, count);


		for (int idx = 0; idx < count; idx++) {
			LinearUniNode* ptr = (LinearUniNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				x[idx][idy] = ptr->in->val[idy];
			}
			if (param->bUseB) {
				for (int idy = 0; idy < outDim; idy++) {
					b[idx][idy] = param->b.val.v[idy];
				}
			}
		}

		y.mat() = param->W.val.mat() * x.mat();

		if (param->bUseB) {
			y.vec() += b.vec();
		}

		for (int idx = 0; idx < count; idx++) {
			LinearUniNode* ptr = (LinearUniNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ptr->val[idy] = y[idx][idy];
			}
		}
	}

	inline void backward() {
		Tensor2D lx, ly;
		lx.init(inDim, count);
		ly.init(outDim, count);

		for (int idx = 0; idx < count; idx++) {
			LinearUniNode* ptr = (LinearUniNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ly[idx][idy] = ptr->loss[idy];
			}
		}

		param->W.grad.mat() += ly.mat() * x.mat().transpose();

		if (param->bUseB) {
			for (int idx = 0; idx < count; idx++) {
				for (int idy = 0; idy < outDim; idy++) {
					param->b.grad.v[idy] += ly[idx][idy];
				}
			}
		}

		lx.mat() += param->W.val.mat().transpose() * ly.mat();

		for (int idx = 0; idx < count; idx++) {
			LinearUniNode* ptr = (LinearUniNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ptr->in->loss[idy] += lx[idx][idy];
			}
		}

	}
};

class LinearExecute :public Execute {
public:
	Tensor2D x, y;
	int inDim, outDim, count;
	UniParams* param;

public:
	inline void  forward() {
		count = batch.size();
		x.init(inDim, count);
		y.init(outDim, count);


		for (int idx = 0; idx < count; idx++) {
			LinearNode* ptr = (LinearNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				x[idx][idy] = ptr->in->val[idy];
			}
		}

		y.mat() = param->W.val.mat() * x.mat();

		for (int idx = 0; idx < count; idx++) {
			LinearNode* ptr = (LinearNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ptr->val[idy] = y[idx][idy];
			}
		}
	}

	inline void backward() {
		Tensor2D lx, ly;
		lx.init(inDim, count);
		ly.init(outDim, count);

		for (int idx = 0; idx < count; idx++) {
			LinearNode* ptr = (LinearNode*)batch[idx];
			for (int idy = 0; idy < outDim; idy++) {
				ly[idx][idy] = ptr->loss[idy];
			}
		}

		param->W.grad.mat() += ly.mat() * x.mat().transpose();

		lx.mat() += param->W.val.mat().transpose() * ly.mat();

		for (int idx = 0; idx < count; idx++) {
			LinearNode* ptr = (LinearNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ptr->in->loss[idy] += lx[idx][idy];
			}
		}
	}
};

inline PExecute UniNode::generate() {
	UniExecute* exec = new UniExecute();
	exec->batch.push_back(this);
	exec->inDim = param->W.inDim();
	exec->outDim = param->W.outDim();
	exec->param = param;
	exec->activate = activate;
	exec->derivate = derivate;
	return exec;
}


inline PExecute LinearUniNode::generate() {
	LinearUniExecute* exec = new LinearUniExecute();
	exec->batch.push_back(this);
	exec->inDim = param->W.inDim();
	exec->outDim = param->W.outDim();
	exec->param = param;
	return exec;
}

inline PExecute LinearNode::generate() {
	LinearExecute* exec = new LinearExecute();
	exec->batch.push_back(this);
	exec->inDim = param->W.inDim();
	exec->outDim = param->W.outDim();
	exec->param = param;
	return exec;
}
#endif /* UNIOP_H_ */
