#ifndef SRC_ModelParams_H_
#define SRC_ModelParams_H_

#include "FeatureDictionary.h"
#include "HyperParams.h"
#include "StringMap.h"
#include "Options.h"
#include "N3LDG.h"

using namespace dparser;
using namespace egstra;

// Each model consists of two parts, building neural graph and defining output losses.

class ModelParams{			
public:
	Alphabet wordAlpha; 
	Alphabet posAlpha;

	LookupTable wordsLookupTable;
	LookupTable wordsRandLookupTable;
	LookupTable posLookupTable;

	LSTM1Params lstm_param;
	LSTM1Params lstm_param_right;
	LSTM1Params lstm_param1;
	LSTM1Params lstm_param_right1;
	//LSTM1Params lstm_param2;
	//LSTM1Params lstm_param_right2;

	UniParams mlp_head_param;
	UniParams mlp_dep_param;

	//UniParams mlp_rel_param;
	//UniParams mlp_head_rel_param;
	
	BiaffineParams biaffine_head;
	//BiaffineParams biaffine_rel;
	
public:
	void convertFGenToAlphabet(FeatureDictionary* _m_fdict, Alphabet* alphabet) {
		alphabet->clear();
		for( StringMap<IndexAndFrequency>::iterator it = _m_fdict->mMap.mbegin(); it != _m_fdict->mMap.mend(); ++it) {
			const string& key = it->first;
			const int id = it->second.mIndex;
			alphabet->insert(key, id);
			int id_c = alphabet->from_string(key);
			if (id_c != id) {
				cerr << id << '\t' << id_c << endl;
			}
		}
	}

	bool initial(FeatureDictionary& word_dict, FeatureDictionary& pos_dict, FeatureDictionary& label_dict, HyperParams& opts, Options m_option) {
		convertFGenToAlphabet(&word_dict, &wordAlpha);
		wordAlpha.set_fixed_flag(true);
		convertFGenToAlphabet(&pos_dict, &posAlpha);
		posAlpha.set_fixed_flag(true);

		if (m_option.wordFile != "") {
			wordsLookupTable.initial(&wordAlpha, m_option.wordFile, false); //pretrained embedding is not trainable
		} else {
			wordsLookupTable.initial(&wordAlpha, m_option.wordEmbeddingDim, false, true);
		}
		wordsRandLookupTable.initial(&wordAlpha, m_option.wordEmbeddingDim, true,true);
		posLookupTable.initial(&posAlpha, m_option.posEmbeddingDim, false, true);

		opts.labelSize = label_dict.size();
		opts.inputsize = m_option.wordEmbeddingDim  + m_option.posEmbeddingDim;

		lstm_param.initial(opts.lstm_output_size, opts.inputsize);
		lstm_param_right.initial(opts.lstm_output_size, opts.inputsize);
		lstm_param1.initial(opts.lstm_output_size, opts.lstm_output_size * 2);
		lstm_param_right1.initial(opts.lstm_output_size, opts.lstm_output_size * 2);
		//lstm_param2.initial(opts.lstm_output_size, opts.lstm_output_size * 2);
		//lstm_param_right2.initial(opts.lstm_output_size, opts.lstm_output_size * 2);

		mlp_head_param.initial(opts.mlp_size, opts.lstm_output_size * 2, true);
		mlp_dep_param.initial(opts.mlp_size, opts.lstm_output_size * 2, true);

		//mlp_rel_param.initial(opts.mlp_rel_size, opts.lstm_output_size * 2, true);
		//mlp_head_rel_param.initial(opts.mlp_rel_size, opts.lstm_output_size * 2, true);
		
		biaffine_head.initial(opts.mlp_size + 1, opts.mlp_size,  false, 1);
		//biaffine_rel.initial(opts.mlp_rel_size + 1, opts.mlp_rel_size + 1,true, opts.labelSize);
		return true;
	}


	void exportModelParams(ModelUpdate& ada){
		wordsLookupTable.exportAdaParams(ada);
		wordsRandLookupTable.exportAdaParams(ada);

		posLookupTable.exportAdaParams(ada);

		lstm_param.exportAdaParams(ada);
		lstm_param_right.exportAdaParams(ada);
		lstm_param1.exportAdaParams(ada);
		lstm_param_right1.exportAdaParams(ada);
		//lstm_param2.exportAdaParams(ada);
		//lstm_param_right2.exportAdaParams(ada);

		mlp_head_param.exportAdaParams(ada);
		mlp_dep_param.exportAdaParams(ada);

		//mlp_rel_param.exportAdaParams(ada);
		//mlp_head_rel_param.exportAdaParams(ada);

		biaffine_head.exportAdaParams(ada);
		//biaffine_rel.exportAdaParams(ada);
	}


	// will add it later
	void saveModel(){
		ofstream out("models.bin");
		wordsLookupTable.save(out);
		wordsRandLookupTable.save(out);
		posLookupTable.save(out);

		lstm_param.saveModel(out);
		lstm_param_right.saveModel(out);
		lstm_param1.saveModel(out);
		lstm_param_right1.saveModel(out);
		//lstm_param2.saveModel(out);
		//lstm_param_right2.saveModel(out);

		mlp_head_param.save(out);
		mlp_dep_param.save(out);
		//mlp_rel_param.save(out);
		//mlp_head_rel_param.save(out);
		biaffine_head.save(out);
		//biaffine_rel.save(out);
	}

	void loadModel(){
		ifstream in("models.bin");
		wordsLookupTable.load(in, &wordAlpha);
		wordsRandLookupTable.load(in, &wordAlpha);
		posLookupTable.load(in, &posAlpha);
		
		lstm_param.loadModel(in);
		lstm_param_right.loadModel(in);
		lstm_param1.loadModel(in);
		lstm_param_right1.loadModel(in);
		//lstm_param2.loadModel(in);
		//lstm_param_right2.loadModel(in);

		mlp_head_param.load(in);
		mlp_dep_param.load(in);
		//mlp_rel_param.load(in);
		//mlp_head_rel_param.load(in);

		biaffine_head.load(in);
		//biaffine_rel.load(in);
	}
};

#endif
