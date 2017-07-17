#ifndef CONCAT
#define CONCAT

/*
*  Concat.h:
*  concatenatation operation.
*
*  Created on: Apr 22, 2017
*      Author: mszhang
*/


#include "MyLib.h"
#include "Node.h"
#include "Graph.h"

class ConcatNode : public Node {
public:
	int nSize;
	vector<int> inDims;
	vector<PNode> ins;

public:
	ConcatNode() : Node() {
		nSize = 0;
		inDims.clear();
		ins.clear();
		node_type = "concat";
	}

	inline void clearValue() {
		Node::clearValue();
	}

	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		Node::init(dim, mem);
	}

public:
	void forward(Graph *cg, const vector<PNode>& x) {
		if (x.size() == 0) {
			std::cout << "empty inputs for concat" << std::endl;
			return;
		}

		ins.clear();
		for (int i = 0; i < x.size(); i++) {
			ins.push_back(x[i]);
		}

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}
		cg->addNode(this);
	}


	void forward(Graph *cg, PNode x1, PNode x2) {
		ins.clear();
		ins.push_back(x1);
		ins.push_back(x2);

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}
		cg->addNode(this);
	}

	void forward(Graph *cg, PNode x1, PNode x2, PNode x3) {
		ins.clear();
		ins.push_back(x1);
		ins.push_back(x2);
		ins.push_back(x3);

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}

		cg->addNode(this);
	}

	void forward(Graph *cg, PNode x1, PNode x2, PNode x3, PNode x4) {
		ins.clear();
		ins.push_back(x1);
		ins.push_back(x2);
		ins.push_back(x3);
		ins.push_back(x4);

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}

		cg->addNode(this);
	}

	void forward(Graph *cg, PNode x1, PNode x2, PNode x3, PNode x4, PNode x5) {
		ins.clear();
		ins.push_back(x1);
		ins.push_back(x2);
		ins.push_back(x3);
		ins.push_back(x4);
		ins.push_back(x5);

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}
		cg->addNode(this);
	}

	void forward(Graph *cg, PNode x1, PNode x2, PNode x3, PNode x4, PNode x5, PNode x6) {
		ins.clear();
		ins.push_back(x1);
		ins.push_back(x2);
		ins.push_back(x3);
		ins.push_back(x4);
		ins.push_back(x5);
		ins.push_back(x6);

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		return Node::typeEqual(other);
	}

public:
	inline void compute() {
		nSize = ins.size();
		inDims.clear();
		int curDim = 0;
		for (int i = 0; i < nSize; ++i) {
			inDims.push_back(ins[i]->val.dim);
			curDim += inDims[i];
		}
		if (curDim != dim) {
			std::cout << "input dim size not match" << curDim << "\t" << dim << std::endl;
			return;
		}

		int offset = 0;
		for (int i = 0; i < nSize; ++i) {
			for (int idx = 0; idx < inDims[i]; idx++) {
				val[offset + idx] = ins[i]->val[idx];
			}
			offset += inDims[i];
		}
	}

	void backward() {
		int offset = 0;
		for (int i = 0; i < nSize; ++i) {
			for (int idx = 0; idx < inDims[i]; idx++) {
				ins[i]->loss[idx] += loss[offset + idx];
			}
			offset += inDims[i];
		}
	}
};

class ConcatExecute : public Execute {
public:
	inline void  forward() {
		int count = batch.size();

		for (int idx = 0; idx < count; idx++) {
			ConcatNode* ptr = (ConcatNode*)batch[idx];
			ptr->compute();
		}
	}

	inline void backward() {
		int count = batch.size();
		for (int idx = 0; idx < count; idx++) {
			ConcatNode* ptr = (ConcatNode*)batch[idx];
			ptr->backward();
		}
	}
};

inline PExecute ConcatNode::generate() {
	ConcatExecute* exec = new ConcatExecute();
	exec->batch.push_back(this);
	return exec;
};

class AddNode : public Node {
public:
	int nSize;
	int inDim;
	vector<PNode> ins;

public:
	AddNode() : Node() {
		nSize = 0;
		inDim = 0;
		ins.clear();
		node_type = "add";
	}

	inline void clearValue() {
		Node::clearValue();
	}

	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		Node::init(dim, mem);
	}

public:
	void forward(Graph *cg, const vector<PNode>& x) {
		if (x.size() <= 0) {
			std::cout << "empty or one inputs for add" << std::endl;
			return;
		}

		ins.clear();
		for (int i = 0; i < x.size(); i++) {
			ins.push_back(x[i]);
		}

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}
		cg->addNode(this);
	}


	void forward(Graph *cg, PNode x1, PNode x2) {
		ins.clear();
		ins.push_back(x1);
		ins.push_back(x2);

		degree = ins.size();
		for (int i = 0; i < degree; ++i) {
			ins[i]->parents.push_back(this);
		}
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		return Node::typeEqual(other);
	}

public:
	inline void compute() {
		nSize = ins.size();
		for (int i = 0; i < nSize; ++i) {
			val.vec() += ins[i]->val.vec();
		}
	}

	void backward() {
		int offset = 0;
		for (int i = 0; i < nSize; ++i) {
			ins[i]->loss.vec() += loss.vec();
		}
	}
};

class AddExecute : public Execute {
public:
	inline void  forward() {
		int count = batch.size();

		for (int idx = 0; idx < count; idx++) {
			AddNode* ptr = (AddNode*)batch[idx];
			ptr->compute();
		}
	}

	inline void backward() {
		int count = batch.size();
		for (int idx = 0; idx < count; idx++) {
			AddNode* ptr = (AddNode*)batch[idx];
			ptr->backward();
		}
	}
};

inline PExecute AddNode::generate() {
	AddExecute* exec = new AddExecute();
	exec->batch.push_back(this);
	return exec;
};

class ExpandNode : public Node {
public:
	PNode in;

public:
	ExpandNode() : Node() {
		in = NULL;
		node_type = "expand";
	}

	inline void clearValue() {
		Node::clearValue();
	}

	inline void init(int dim, AlignedMemoryPool* mem = NULL) {
		Node::init(dim, mem);
	}

public:
	void forward(Graph *cg, const PNode x) {
		in = x;
		degree = 1;
		in->parents.push_back(this);
		cg->addNode(this);
	}

public:
	inline PExecute generate();

	// better to rewrite for deep understanding
	inline bool typeEqual(PNode other) {
		return Node::typeEqual(other);
	}

public:
	inline void compute() {
		dim = in->val.dim;
		init(dim + 1);
		for (int i = 0; i < dim; ++i) {
			val[i] = in->val[i];
		}
		val[dim] = 1;
		dim += 1;
	}

	void backward() {
		for (int i = 0; i < dim - 1; ++i) {
			in->loss[i] += loss[i];
		}
	}
};

class ExpandExecute : public Execute {
public:
	inline void  forward() {
		int count = batch.size();

		for (int idx = 0; idx < count; idx++) {
			ExpandNode* ptr = (ExpandNode*)batch[idx];
			ptr->compute();
		}
	}

	inline void backward() {
		int count = batch.size();
		for (int idx = 0; idx < count; idx++) {
			ExpandNode* ptr = (ExpandNode*)batch[idx];
			ptr->backward();
		}
	}
};

inline PExecute ExpandNode::generate() {
	ExpandExecute* exec = new ExpandExecute();
	exec->batch.push_back(this);
	return exec;
}
#endif
