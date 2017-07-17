#ifndef _PARSER_
#define _PARSER_

#pragma once
#include <vector>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <set>
using namespace std;

#include "IOPipe.h"
#include "FGen.h"
#include "Decoder.h"
#include "common.h"
#include "Eigen/Dense"
#include "MyLib.h"
/*******************
There seems some conflicts between "ChartUtils.h" and "spthread.h".
The order of their #include can not be reversed!
I do not know why!
*******************/
#include "CharUtils.h"
#include "StringMap.h"
#include "Options.h"
using namespace egstra;

#include "spthread.h"
#include "threadpool.h"

extern sp_thread_mutex_t _global_mutex;  //@kiro
extern sp_thread_mutex_t _global_precomputation_mutex;

namespace dparser {
	/*
	this class controls the parsing process.
	*/
	class Parser
	{
	public:
		IOPipe m_pipe_train;
		IOPipe m_pipe_train2;
		IOPipe m_pipe_test;
		IOPipe m_pipe_dev;

		Options m_option;  // neural network option
		FGen _fgen;

		ModelParams _modelparams;  // model parameters
		HyperParams _hyperparams;
		Metric _eval;
		ModelUpdate _ada_gradient;  // for model update

		static double lossSum;
		/* options */
	private:
		int _display_interval;

		string _option_file_path;  // neural network option file path
		string _dictionary_path;
		string _parameter_path;
		int _inst_max_len_to_throw;

		bool _train;
		int _iter_num;
		int _best_iter_num_so_far;
		double _best_accuracy;
		int _stop_iter_num_no_increase;

		vector<int> _inst_idx_to_read;

		bool _use_train2;
		int _inst_num_from_train2_as_one_inst;
		int _inst_num_from_train2_one_iter;
		int _inst_num_from_train1_one_iter;
		string _filename_train2;
		int _inst_max_num_train2;

		string _filename_train;
		string _filename_dev;

		int _inst_max_num_train;
		bool _dictionary_exist;
		bool _pamameter_exist;
		int _param_tmp_num;

		bool _test;
		string _filename_test;
		string _filename_output;
		int _param_num_for_eval;
		int _inst_max_num_eval;
		int _test_batch_size;

		/* variables used in evaluate */
		int inst_num_processed_total;
		int word_num_total;
		int word_num_dep_correct;
		int word_num_label_correct;
		int sent_num_root_corect;
		int sent_num_CM; // complete match

		int _number_processed; // total number of updates so far
		int _thread_num;

		threadpool _tp;
		static sp_thread_mutex_t _mutex;  //@kiro

		int update_iter;

	public:
		Parser() {
			//Decoder::process_options();
			_fgen.process_options();
			process_options();
			_tp = create_threadpool(max(1, _thread_num)); // _thread_num @kiro
			//assert(_g_thread_num > 0);
			//cerr << "Parser(): thread-num = " << _g_thread_num << endl;
		}

		~Parser(void) {
			destroy_threadpool(_tp);
			_tp = 0;
		}

		typedef struct thread_arg_t {
			thread_arg_t(Parser* parser, Instance * const inst, const bool is_train) : _parser(parser), _inst(inst), _is_train(is_train) { }
			Parser* const _parser;
			Instance * const _inst;
			const bool _is_train;
		};
		
		void process_options();

		void run()
		{
			if (_option_file_path != "") {  // file path read from the command line 
				m_option.load(_option_file_path);
			}
			else {
				cerr << "cannot find the neural netowrk config file!" << endl;
				exit(-1);
			}
			m_option.showOptions();

			if (_train) {
				pre_train();
				train();
				post_train();
			}
			if (_test) test(_param_num_for_eval);
		}

		static Decoder *new_decoder(ModelParams* _modelparams, HyperParams* _hyperparams, FGen* _fgen, bool is_train, Instance *inst, Options* m_option) {
			Decoder *decoder = new Decoder(_modelparams, _hyperparams, _fgen, is_train, inst, m_option->beam, m_option->batchSize);
			assert(decoder);
			return decoder;
		}

		static void delete_decoder(Decoder *&decoder) {
			if (decoder) {
				delete decoder;
				decoder = 0;
			}
		}
		static void delete_eval_decoder(Decoder *&decoder) {
			if (decoder) {
				decoder->delete_decoder();
				delete decoder;
				decoder = 0;
			}
		}
	private:

		void train();
		void train_one_iteration(const int iter_num);
		void test(const int iter);
		void get_word_pos_label_id(Instance * inst) {
			_fgen.get_labels_id(inst);
			_fgen.get_words_id(inst);
			_fgen.get_POS_id(inst);
		}

		void decode_insts(vector<Instance *> ordered_list, bool train);
		void decode_one_inst(Instance * inst, bool train);
		Instance *get_instance(const int inst_idx) {
			const int real_inst_idx = _inst_idx_to_read[inst_idx];
			if (real_inst_idx < m_pipe_train.getInstanceNum())
				return m_pipe_train.getInstance(real_inst_idx);
			else
				return m_pipe_train2.getInstance(real_inst_idx - m_pipe_train.getInstanceNum());
		}
		Instance *get_instance_from_train2(const int inst_idx, const int offset) {
			const int real_inst_idx = _inst_idx_to_read[inst_idx];
			assert(real_inst_idx >= m_pipe_train.getInstanceNum());
			return m_pipe_train2.getInstance(real_inst_idx - m_pipe_train.getInstanceNum() + offset);
		}
		bool is_from_train2(const int real_inst_idx) {
			return (real_inst_idx >= m_pipe_train.getInstanceNum());
		}

		void  delete_one_train_instance_after_update_gradient(Instance * const inst) {
			if (inst->id < m_pipe_train.getInstanceNum()) {
				if (m_pipe_train.use_instances_posi()) {
					delete inst;
				}
			}
			else {
				if (m_pipe_train2.use_instances_posi()) {
					delete inst;
				}
			}
		}

		// @kiro
		void delete_one_eval_instance(Instance * const inst) {
			if (m_pipe_dev.use_instances_posi()) {
				delete inst;
			}
		}
		// @kiro
		void delete_one_test_instance(Instance * const inst) {
			if (m_pipe_test.use_instances_posi()) {
				delete inst;
			}
		}

		int get_inst_num_one_iter() const { return _inst_idx_to_read.size(); }
		void prepare_train_instances();
		void pre_train();
		void post_train() {
			m_pipe_train.dealloc_instance();
			m_pipe_train.closeInputFile();
			if (_use_train2) {
				m_pipe_train2.dealloc_instance();
				m_pipe_train2.closeInputFile();
			}
			m_pipe_dev.dealloc_instance();
		}


		void evaluate(IOPipe &pipe, const bool is_test);
		void reset_evaluate_metrics();
		void output_evaluate_metrics();

		void create_dictionaries(IOPipe &pipe, const bool only_collect_label = false);

		void load_dictionaries() {
			_fgen.load_dictionaries(_dictionary_path);
			cerr << "load dict done!" << endl;

			_hyperparams.setRequared(m_option);
			_modelparams.initial(_fgen._word_dict, _fgen._pos_dict, _fgen._label_dict, _hyperparams, m_option);

			if (!_hyperparams.bValid()) {
				std::cout << "hyper parameter initialization Error, Please check!" << std::endl;
				return;
			}
			_modelparams.exportModelParams(_ada_gradient);

			_hyperparams.print();
			_ada_gradient._alpha = _hyperparams.adaAlpha;
			_ada_gradient._eps = _hyperparams.adaEps;
			_ada_gradient._reg = _hyperparams.nnRegular;
		}

		void updateModel(int t, int word_num) {
			_ada_gradient.gradient_clip(_hyperparams.clip);
			_ada_gradient.updateAdam(word_num);
		}

		inline void resetEval() {
			_eval.reset();
		}

		void save_dictionaries() {
			_fgen.save_dictionaries(_dictionary_path, m_option.wordCutOff);
		}

		void save_parameters(const int iter) {
			_modelparams.saveModel();
		}

		void load_parameters(const int iter) {
			_modelparams.loadModel();
		}

		void delete_parameters(const int iter) {
		}
		void evaluate_one_instance(const Instance * const inst);
		void error_num_dp(const Instance *inst, const bool bIncludePunc, int &nDepError, int &nLabelError, int &nUnscoredToken, bool &bRootCorrect) const;
	};
}


#endif

