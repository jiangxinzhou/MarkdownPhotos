#pragma once
#ifndef ATOMICIOP_H_
#define ATOMICIOP_H_

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

class TanhNode :public Node {
public:
	PNode in;

public:
	TanhNode() : Node() {
		in = NULL;
		node_type = "tanh";
	}

	~TanhNode() {
		in = NULL;
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
		return result;
	}
};

class TanhExecute :public Execute {
public:
	Tensor2D x, y;
	int inDim;

public:
	~TanhExecute() {
		inDim = 0;
	}

public:
	inline void  forward() {
		int count = batch.size();
		x.init(inDim, count);
		y.init(inDim, count);

		for (int idx = 0; idx < count; idx++) {
			TanhNode* ptr = (TanhNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				x[idx][idy] = ptr->in->val[idy];
			}
		}
		y.vec() = x.vec().unaryExpr(ptr_fun(ftanh));

		for (int idx = 0; idx < count; idx++) {
			TanhNode* ptr = (TanhNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ptr->val[idy] = y[idx][idy];
			}
		}
	}

	inline void backward() {
		int count = batch.size();
		Tensor2D lx, ly;
		lx.init(inDim, count);
		ly.init(inDim, count);

		for (int idx = 0; idx < count; idx++) {
			TanhNode* ptr = (TanhNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ly[idx][idy] = ptr->loss[idy];
			}
		}

		lx.vec() = ly.vec() * x.vec().binaryExpr(y.vec(), ptr_fun(dtanh));

		for (int idx = 0; idx < count; idx++) {
			TanhNode* ptr = (TanhNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ptr->in->loss[idy] += lx[idx][idy];
			}
		}
	}
};
inline PExecute TanhNode::generate() {
	TanhExecute* exec = new TanhExecute();
	exec->batch.push_back(this);
	exec->inDim = in->dim;
	return exec;
};

class PMultNode :public Node {
public:
	PNode in1, in2;

public:
	PMultNode() : Node() {
		in1 = NULL;
		in2 = NULL;
		node_type = "pmult";
	}

	~PMultNode() {
		in1 = NULL;
		in2 = NULL;
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
		return result;
	}
};

class PMultExecute :public Execute {
public:
	Tensor2D x1, x2, y;
	int inDim;

public:
	~PMultExecute() {
		inDim = 0;
	}

public:
	inline void  forward() {
		int count = batch.size();
		PMultNode* ptr = (PMultNode*)batch[0];
		inDim = ptr->dim;
		x1.init(inDim, count);
		x2.init(inDim, count);
		y.init(inDim, count);

		for (int idx = 0; idx < count; idx++) {
			PMultNode* ptr = (PMultNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				x1[idx][idy] = ptr->in1->val[idy];
				x2[idx][idy] = ptr->in2->val[idy];
			}
		}
		y.mat() = x1.mat().array() * x2.mat().array();
		for (int idx = 0; idx < count; idx++) {
			PMultNode* ptr = (PMultNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ptr->val[idy] = y[idx][idy];
			}
		}
	}

	inline void backward() {
		int count = batch.size();
		Tensor2D lx1, lx2, ly;
		lx1.init(inDim, count);
		lx2.init(inDim, count);
		ly.init(inDim, count);

		for (int idx = 0; idx < count; idx++) {
			PMultNode* ptr = (PMultNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ly[idx][idy] = ptr->loss[idy];
			}
		}

		lx1.mat() = ly.mat().array() * x2.mat().array();
		lx2.mat() = ly.mat().array() * x1.mat().array();

		for (int idx = 0; idx < count; idx++) {
			PMultNode* ptr = (PMultNode*)batch[idx];
			for (int idy = 0; idy < inDim; idy++) {
				ptr->in1->loss[idy] += lx1[idx][idy];
				ptr->in2->loss[idy] += lx2[idx][idy];
			}
		}
	}
};
inline PExecute PMultNode::generate() {
	PMultExecute* exec = new PMultExecute();
	exec->batch.push_back(this);
	return exec;
};

#endif
