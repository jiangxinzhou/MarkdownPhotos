#ifndef SRC_HyperParams_H_
#define SRC_HyperParams_H_

#include "N3LDG.h"
#include "Options.h"

using namespace std;

struct HyperParams{
	//required
	int maxlength;

	int lstm_output_size;
	int mlp_size;
	int mlp_rel_size;
	double dropOut;

	int word_emb_size;
	int tag_emb_size;

	double nnRegular; // for optimization
	double adaAlpha;  // for optimization
	double adaEps; // for optimization
	double momentum;
	double clip;
	
	int inputsize;
	int labelSize;
	
private:
	bool bAssigned;

public:
	HyperParams(){
		bAssigned = false;
	}

public:
	void setRequared(Options& opt){
		lstm_output_size = opt.lstm_output_size;
		mlp_size = opt.mlp_size;
		mlp_rel_size = opt.mlp_rel_size;
		word_emb_size = opt.wordEmbeddingDim;
		tag_emb_size = opt.posEmbeddingDim;
		dropOut = opt.dropProb;
		nnRegular = opt.regParameter;
		adaAlpha = opt.adaAlpha;
		adaEps = opt.adaEps;
		momentum = opt.momentum;
		
		maxlength = opt.maxlength;
		bAssigned = true;

		clip = opt.clip;
	}

	void clear(){
		bAssigned = false;
	}

	bool bValid(){
		return bAssigned;
	}

public:

	void print(){

	}
};
#endif SRC_HyperParams_H_
