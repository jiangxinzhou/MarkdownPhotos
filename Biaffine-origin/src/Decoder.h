#ifndef _DECODER_
#define _DECODER_
#pragma once

#include <iomanip>
#include "Instance.h"
#include "common.h"
#include "Util-options.h"
#include "FGen.h"
#include "Parameters.h"
#include "Actions.h"

#include "spthread.h"
#include "threadpool.h"
#include "ModelParams.h"
#include "N3LDG.h"
using namespace egstra;

namespace dparser {
	class Decoder
	{
	public:
		Instance *const _inst;
		const bool _is_train;
		int _label_num;
		const FGen *const _fgen;
		ModelParams * const _modelparams;
		HyperParams * const _hyperparams;

		vector<LookupNode> word_pret_emb;
		vector<LookupNode> word_rand_emb;
		vector<AddNode> word_emb;
		
		vector<LookupNode> tag_emb;
		vector<DropoutNode> tag_emb_drop;
		vector<ConcatNode> emb_input;
		vector<DropoutNode> emb_input_drop;

		vector<ConcatNode> lstm_output;
		vector<DropoutNode> lstm_output_drop;
		vector<ConcatNode> lstm_output1;
		vector<DropoutNode> lstm_output1_drop;
		//vector<ConcatNode> lstm_output2;
		//vector<DropoutNode> lstm_output2_drop;

		vector<UniNode> mlp_head;
		vector<UniNode> mlp_dep;
		vector<DropoutNode> mlp_head_drop;
		vector<DropoutNode> mlp_dep_drop;

		/*vector<UniNode> mlp_rel;
		vector<UniNode> mlp_head_rel;
		vector<DropoutNode> mlp_rel_drop;
		vector<DropoutNode> mlp_head_rel_drop;*/

		BiaffineNode parse_logits;
		//BiaffineNode rel_logits;

		vector<vector<double> > head_prob;
		//vector<vector<double> >  rel_prob;

		LSTM1Builder lstm_build;
		LSTM1Builder lstm_build_right;
		LSTM1Builder lstm_build1;
		LSTM1Builder lstm_build_right1;
		//LSTM1Builder lstm_build2;
		//LSTM1Builder lstm_build_right2;

	public:
		Decoder(ModelParams * const modelparams, HyperParams * const hyperparams, const FGen * const fgen,
			bool is_train, Instance *const inst, int beam_size, int batch_size) :
			_modelparams(modelparams), _hyperparams(hyperparams), _fgen(fgen), _is_train(is_train),
			_inst(inst) {
			_label_num = _fgen->_label_dict.size();
			set_param(*modelparams, *hyperparams);
		}

		virtual ~Decoder(void) {
			head_prob.clear();
		}

		void delete_decoder(void) {
			head_prob.clear();
		}

	public:
		inline void set_param(ModelParams& params, const HyperParams& hyparams, AlignedMemoryPool* mem = NULL) {
			const int len = _inst->size();
			word_pret_emb.resize(len);
			word_rand_emb.resize(len);
			word_emb.resize(len);// word_pret_embed + word_rand_embed
			
			tag_emb.resize(len);
			tag_emb_drop.resize(len);

			emb_input.resize(len);//concat word and tag embedding
			emb_input_drop.resize(len);

			lstm_output.resize(len);
			lstm_output_drop.resize(len);
			lstm_output1.resize(len);
			lstm_output1_drop.resize(len);
			//lstm_output2.resize(len);
			//lstm_output2_drop.resize(len);

			mlp_head.resize(len);
			mlp_dep.resize(len);
			mlp_head_drop.resize(len);
			mlp_dep_drop.resize(len);

			/*mlp_rel.resize(len);
			mlp_head_rel.resize(len);
			mlp_rel_drop.resize(len);
			mlp_head_rel_drop.resize(len);*/

			head_prob.resize(len);
			//rel_prob.resize(len);

			for (int i = 0; i < len; i++) {
				word_pret_emb[i].setParam(&params.wordsLookupTable);
				word_pret_emb[i].init(hyparams.word_emb_size, mem);
				word_rand_emb[i].setParam(&params.wordsRandLookupTable);
				word_rand_emb[i].init(hyparams.word_emb_size, mem);
				word_emb[i].init(hyparams.word_emb_size, mem);
				
				tag_emb[i].setParam(&params.posLookupTable);
				tag_emb[i].init(hyparams.tag_emb_size, mem);
				tag_emb_drop[i].setParam(0.33);
				tag_emb_drop[i].init(hyparams.tag_emb_size, mem);

				emb_input[i].init(hyparams.tag_emb_size + hyparams.word_emb_size, mem);
				emb_input_drop[i].setParam(0.33);
				emb_input_drop[i].init(hyparams.tag_emb_size + hyparams.word_emb_size, mem);
				
				lstm_output[i].init(hyparams.lstm_output_size * 2, mem);
				lstm_output_drop[i].setParam(0.33);
				lstm_output_drop[i].init(hyparams.lstm_output_size * 2, mem);
				lstm_output1_drop[i].setParam(0.33);
				lstm_output1_drop[i].init(hyparams.lstm_output_size * 2, mem);
				lstm_output1[i].init(hyparams.lstm_output_size * 2, mem);
				//lstm_output2_drop[i].setParam(0.33);
				//lstm_output2_drop[i].init(hyparams.lstm_output_size * 2, mem);
				//lstm_output2[i].init(hyparams.lstm_output_size * 2, mem);

				mlp_head[i].init(hyparams.mlp_size, mem);
				mlp_head[i].setParam(&params.mlp_head_param);
				mlp_head[i].setFunctions(&fleaky_relu, &dleaky_relu);
				
				mlp_dep[i].init(hyparams.mlp_size, mem);
				mlp_dep[i].setParam(&params.mlp_dep_param);
				mlp_dep[i].setFunctions(&fleaky_relu, &dleaky_relu);
				
				mlp_dep_drop[i].init(hyparams.mlp_size, mem);
				mlp_dep_drop[i].setParam(0.33);
				mlp_head_drop[i].init(hyparams.mlp_size, mem);
				mlp_head_drop[i].setParam(0.33);				

				/*mlp_rel[i].setParam(&params.mlp_rel_param);
				mlp_rel[i].setFunctions(&fleaky_relu, &dleaky_relu);
				mlp_rel[i].init(hyparams.mlp_rel_size, mem);
				mlp_head_rel[i].setParam(&params.mlp_head_rel_param);
				mlp_head_rel[i].setFunctions(&fleaky_relu, &dleaky_relu);
				mlp_head_rel[i].init(hyparams.mlp_rel_size, mem);
				mlp_rel_drop[i].setParam(0.33);
				mlp_rel_drop[i].init(hyparams.mlp_rel_size, mem);
				mlp_head_rel_drop[i].setParam(0.33);
				mlp_head_rel_drop[i].init(hyparams.mlp_rel_size, mem);*/

				head_prob[i].resize(len);
				//rel_prob[i].resize(_label_num);
			}

			parse_logits.setParam(&params.biaffine_head, true, false);
			parse_logits.init(len, mem);
			
			//rel_logits.setParam(&params.biaffine_rel, true, true);
			//rel_logits.init(len, mem);

			lstm_build.resize(len);
			lstm_build.setParam(&params.lstm_param, 0.33, hyparams.lstm_output_size, true);
			lstm_build_right.resize(len);
			lstm_build_right.setParam(&params.lstm_param_right, 0.33, hyparams.lstm_output_size, false);

			lstm_build1.resize(len);
			lstm_build1.setParam(&params.lstm_param1, 0.33, hyparams.lstm_output_size, true);
			lstm_build_right1.resize(len);
			lstm_build_right1.setParam(&params.lstm_param_right1, 0.33, hyparams.lstm_output_size, false);

			//lstm_build2.resize(len);
			//lstm_build2.setParam(&params.lstm_param2, 0.33, hyparams.lstm_output_size, true);
			//lstm_build_right2.resize(len);
			//lstm_build_right2.setParam(&params.lstm_param_right2, 0.33, hyparams.lstm_output_size, false);
		}

	public:
		void forward(Graph * _graph);

		void compute_parse_logits_loss();
		void compute_rel_logits_loss();

	public:
		void get_result();
		void get_head_prob();
		void get_rel_prob();
		void get_max();
		void get_max_conditional();

	};
} // namespace dparser

#endif

