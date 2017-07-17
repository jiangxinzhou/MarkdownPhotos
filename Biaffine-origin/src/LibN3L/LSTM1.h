#ifndef LSTM1
#define LSTM1

#include "MyLib.h"
#include "Node.h"
#include "BiOP.h"
#include "AtomicOP.h"
#include "Graph.h"

struct LSTM1Params {
	BiParams input;
	BiParams output;
	BiParams forget;
	BiParams cell;

	LSTM1Params() {
	}

	inline void exportAdaParams(ModelUpdate& ada) {
		input.exportAdaParams(ada);
		output.exportAdaParams(ada);
		forget.exportAdaParams(ada);
		cell.exportAdaParams(ada);
	}

	inline void initial(int nOSize, int nISize, AlignedMemoryPool* mem = NULL) {
		input.initial(nOSize, nISize, nOSize, true, mem);
		output.initial(nOSize, nISize, nOSize, true, mem);
		forget.initial(nOSize, nISize, nOSize, true, mem);
		cell.initial(nOSize, nISize, nOSize, false, mem);
	}

	inline void loadModel(ifstream& in) {
		input.load(in);
		output.load(in);
		forget.load(in);
		cell.load(in);
	}

	inline void saveModel(ofstream& out) {
		input.save(out);
		output.save(out);
		forget.save(out);
		cell.save(out);
	}

	inline int inDim() {
		return input.W2.inDim();
	}

	inline int outDim() {
		return input.W2.outDim();
	}

};

// standard LSTM1 using tanh as activation function
// other conditions are not implemented unless they are clear
class LSTM1Builder {
public:
	int _nSize;
	int _inDim;
	int _outDim;

	vector<BiNode> _inputgates;
	vector<BiNode> _forgetgates;
	vector<BiNode> _halfcells;

	vector<PMultNode> _inputfilters;
	vector<PMultNode> _forgetfilters;

	vector<AddNode> _cells;
	vector<BiNode> _outputgates;
	vector<TanhNode> _halfhiddens;
	vector<PMultNode> _hiddens;
	vector<DropoutNode> _hiddens_drop;

	vector<BucketNode> buckets;

	LSTM1Params* _param;

	bool _left2right;

public:
	LSTM1Builder() {
		clear();
	}

	~LSTM1Builder() {
		clear();
	}

public:
	inline void setParam(LSTM1Params* paramInit, dtype dropout, const int lstm_output_size, bool left2right = true, AlignedMemoryPool * mem = NULL) {
		_param = paramInit;
		_inDim = _param->input.W2.inDim();
		_outDim = _param->input.W2.outDim();
		for (int idx = 0; idx < _inputgates.size(); idx++) {
			_inputgates[idx].setParam(&_param->input);
			_inputgates[idx].init(lstm_output_size, mem);
			_forgetgates[idx].setParam(&_param->forget);
			_forgetgates[idx].init(lstm_output_size, mem);

			_inputfilters[idx].init(lstm_output_size, mem);
			_forgetfilters[idx].init(lstm_output_size, mem);
			_outputgates[idx].setParam(&_param->output);
			_outputgates[idx].init(lstm_output_size, mem);
			_halfcells[idx].setParam(&_param->cell);
			_halfcells[idx].init(lstm_output_size, mem);
			_inputgates[idx].setFunctions(&fsigmoid, &dsigmoid);
			_outputgates[idx].setFunctions(&fsigmoid, &dsigmoid);
			_forgetgates[idx].setFunctions(&fsigmoid, &dsigmoid);
			_halfcells[idx].setFunctions(&ftanh, &dtanh);
			_hiddens_drop[idx].setParam(dropout);
			_hiddens_drop[idx].init(lstm_output_size, mem);

			_cells[idx].init(lstm_output_size, mem);
			_hiddens[idx].init(lstm_output_size, mem);
			_halfhiddens[idx].init(lstm_output_size, mem);
		}
		_left2right = left2right;
		for (int i = 0; i < 4; i++)
			buckets[i].init(_outDim, mem);
	}

	inline void resize(int maxsize) {
		_inputgates.resize(maxsize);
		_forgetgates.resize(maxsize);
		_halfcells.resize(maxsize);
		_inputfilters.resize(maxsize);
		_forgetfilters.resize(maxsize);
		_cells.resize(maxsize);
		_outputgates.resize(maxsize);
		_halfhiddens.resize(maxsize);
		_hiddens.resize(maxsize);

		_hiddens_drop.resize(maxsize);
		buckets.resize(4);
	}

	//whether vectors have been allocated
	inline bool empty() {
		return _hiddens.empty();
	}

	inline void clear() {
		_inputgates.clear();
		_forgetgates.clear();
		_halfcells.clear();
		_inputfilters.clear();
		_forgetfilters.clear();
		_cells.clear();
		_outputgates.clear();
		_halfhiddens.clear();
		_hiddens.clear();
		_left2right = true;
		_param = NULL;
		buckets.clear();
		_nSize = 0;
		_inDim = 0;
		_outDim = 0;

		_hiddens_drop.clear();
	}

public:
	inline void forward(Graph *cg, const vector<PNode>& x, bool bTrain) {
		if (x.size() == 0) {
			std::cout << "empty inputs for lstm operation" << std::endl;
			return;
		}
		_nSize = x.size();
		if (x[0]->val.mat().rows() != _inDim) {
			std::cout << "input dim does not match for seg operation" << std::endl;
			return;
		}

		if (_left2right) {
			left2right_forward(cg, x, bTrain);
		}
		else {
			right2left_forward(cg, x, bTrain);
		}
	}
protected:
	inline void left2right_forward(Graph *cg, const vector<PNode>& x, bool bTrain) {
		for (int idx = 0; idx < _nSize; idx++) {
			if (idx == 0) {
				buckets[0].forward(cg, 0);
				_inputgates[idx].forward(cg, &buckets[0], x[idx]);

				buckets[1].forward(cg, 0);
				_halfcells[idx].forward(cg, &buckets[1], x[idx]);

				_inputfilters[idx].forward(cg, &_halfcells[idx], &_inputgates[idx]);

				buckets[2].forward(cg, 0);
				_cells[idx].forward(cg, &_inputfilters[idx], &buckets[2]);

				_halfhiddens[idx].forward(cg, &_cells[idx]);

				buckets[3].forward(cg, 0);
				_outputgates[idx].forward(cg, &buckets[3], x[idx]);

				_hiddens[idx].forward(cg, &_halfhiddens[idx], &_outputgates[idx]);

			}
			else {
				_hiddens_drop[idx - 1].forward(cg, &_hiddens[idx - 1]);

				_inputgates[idx].forward(cg, &_hiddens_drop[idx - 1], x[idx]);

				_forgetgates[idx].forward(cg, &_hiddens_drop[idx - 1], x[idx]);

				_halfcells[idx].forward(cg, &_hiddens_drop[idx - 1], x[idx]);//Ã»ÓÐbias

				_inputfilters[idx].forward(cg, &_halfcells[idx], &_inputgates[idx]);//PMultiNode

				_forgetfilters[idx].forward(cg, &_cells[idx - 1], &_forgetgates[idx]);//PMultiNode

				_cells[idx].forward(cg, &_inputfilters[idx], &_forgetfilters[idx]);

				_halfhiddens[idx].forward(cg, &_cells[idx]);//TanhNode

				_outputgates[idx].forward(cg, &_hiddens_drop[idx - 1], x[idx]);

				_hiddens[idx].forward(cg, &_halfhiddens[idx], &_outputgates[idx]);
			}
		}
	}

	inline void right2left_forward(Graph *cg, const vector<PNode>& x, bool bTrain) {
		for (int idx = _nSize - 1; idx >= 0; idx--) {
			if (idx == _nSize - 1) {
				buckets[0].forward(cg, 0);
				_inputgates[idx].forward(cg, &buckets[0], x[idx]);

				buckets[1].forward(cg, 0);
				_halfcells[idx].forward(cg, &buckets[1], x[idx]);

				_inputfilters[idx].forward(cg, &_halfcells[idx], &_inputgates[idx]);

				buckets[2].forward(cg, 0);
				_cells[idx].forward(cg, &_inputfilters[idx], &buckets[2]);

				_halfhiddens[idx].forward(cg, &_cells[idx]);

				buckets[3].forward(cg, 0);
				_outputgates[idx].forward(cg, &buckets[3], x[idx]);

				_hiddens[idx].forward(cg, &_halfhiddens[idx], &_outputgates[idx]);
			}
			else {
				_hiddens_drop[idx + 1].forward(cg, &_hiddens[idx + 1]);

				_inputgates[idx].forward(cg, &_hiddens_drop[idx + 1], x[idx]);

				_forgetgates[idx].forward(cg, &_hiddens_drop[idx + 1], x[idx]);

				_halfcells[idx].forward(cg, &_hiddens_drop[idx + 1], x[idx]);

				_inputfilters[idx].forward(cg, &_halfcells[idx], &_inputgates[idx]);

				_forgetfilters[idx].forward(cg, &_cells[idx + 1], &_forgetgates[idx]);

				_cells[idx].forward(cg, &_inputfilters[idx], &_forgetfilters[idx]);

				_halfhiddens[idx].forward(cg, &_cells[idx]);

				_outputgates[idx].forward(cg, &_hiddens_drop[idx + 1], x[idx]);

				_hiddens[idx].forward(cg, &_halfhiddens[idx], &_outputgates[idx]);
			}
		}
	}
};
#endif
