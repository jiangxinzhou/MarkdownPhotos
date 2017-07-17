#include "Parser.h"
#include <cstdio>
#include <iomanip>
#include <ctime>
#include <cfloat>
#include <algorithm>
using namespace std;

sp_thread_mutex_t _global_mutex;
sp_thread_mutex_t _global_precomputation_mutex;

namespace dparser {

	sp_thread_mutex_t Parser::_mutex;
	double Parser::lossSum;
	void Parser::process_options()
	{
		m_pipe_train.process_options();
		m_pipe_train2.process_options();
		m_pipe_test.process_options();
		m_pipe_dev.process_options();

		_train = false;
		_test = false;
		_inst_max_len_to_throw = 150;
		_inst_max_num_eval = -1;
		_inst_max_num_train = -1;
		_inst_max_num_train2 = -1;
		_test_batch_size = 10000;


		_display_interval = 100;

		_dictionary_path = ".";
		_parameter_path = ".";

		_use_train2 = false;
		_filename_train2 = "train2.conll06";
		_inst_num_from_train2_one_iter = -1;
		_inst_num_from_train1_one_iter = -1;
		_inst_max_num_train2 = -1;
		_inst_num_from_train2_as_one_inst = 1;
		_filename_train = "";
		_filename_dev = "";
		_iter_num = 20;
		_stop_iter_num_no_increase = 30;

		_dictionary_exist = false;
		_pamameter_exist = false;
		_param_tmp_num = -1;

		_filename_test = "";
		_filename_output = "";
		_param_num_for_eval = -1;

		int tmp; string strtmp;	double dtmp;
		_thread_num = 5;  // thread num
		if (options::get("thread-num", tmp)) { assert(tmp > 0); _thread_num = tmp; }

		if (options::get("train", tmp)) {
			_train = tmp;
		}
		if (options::get("test", tmp)) {
			_test = tmp;
		}


		if (_train) {

			if (options::get("stop-iter-num-no-increase", tmp)) {
				_stop_iter_num_no_increase = tmp;
			}
			if (options::get("inst-num-from-train-1-one-iter", tmp)) {
				_inst_num_from_train1_one_iter = tmp;
			}

			if (options::get("use-train-2", tmp)) {
				_use_train2 = (1 == tmp);
			}
			if (_use_train2) {
				if (options::get("train-file-2", strtmp)) {
					_filename_train2 = strtmp;
				}
				if (options::get("inst-max-num-train-2", tmp)) {
					_inst_max_num_train2 = tmp;
				}
				if (options::get("inst-num-from-train-2-one-iter", tmp)) {
					_inst_num_from_train2_one_iter = tmp;
				}
			}
		}

		if (_test) {
			if (options::get("test-batch-size", tmp)) {
				_test_batch_size = tmp;
			}
		}

		if (options::get("inst-max-len-to-throw", tmp)) {
			_inst_max_len_to_throw = tmp;
		}

		if (options::get("inst-max-num-train", tmp)) {
			_inst_max_num_train = tmp;
		}
		if (options::get("inst-max-num-eval", tmp)) {
			_inst_max_num_eval = tmp;
		}

		if (options::get("display-interval", tmp)) {
			_display_interval = tmp;
		}

		if (options::get("dictionary-path", strtmp)) {
			_dictionary_path = strtmp;
		}
		if (options::get("parameter-path", strtmp)) {
			_parameter_path = strtmp;
		}
		if (options::get("option_file_path", strtmp)) {
			_option_file_path = strtmp;
		}

		if (options::get("dictionary-exist", tmp)) {
			_dictionary_exist = tmp;
		}

		if (options::get("parameter-exist", tmp)) {
			_pamameter_exist = tmp;
		}
		if (options::get("param-tmp-num", tmp)) {
			_param_tmp_num = tmp;
			if (_param_tmp_num <= 0) _param_tmp_num = 1;
		}

		if (options::get("train-file", strtmp)) {
			_filename_train = strtmp;
		}
		if (options::get("dev-file", strtmp)) {
			_filename_dev = strtmp;
		}
		if (options::get("iter-num", tmp)) {
			_iter_num = tmp;
		}

		if (options::get("test-file", strtmp)) {
			_filename_test = strtmp;
		}
		if (options::get("output-file", strtmp)) {
			_filename_output = strtmp;
		}
		if (options::get("param-num-for-eval", tmp)) {
			_param_num_for_eval = tmp;
		}
		if (options::get("filtered-arc-train1", tmp)) {
			m_pipe_train.set_filtered_arc_flag((1 == tmp));
		}
		if (options::get("filtered-arc-train2", tmp)) {
			m_pipe_train2.set_filtered_arc_flag((1 == tmp));
		}
		if (options::get("filtered-arc-test", tmp)) {
			m_pipe_test.set_filtered_arc_flag((1 == tmp));
		}

		/*		if(options::get("train-method", strtmp)) {
		_train_method = strtmp;
		}
		*/
	}

	void Parser::prepare_train_instances()
	{
		_inst_idx_to_read.clear();

		m_pipe_train.shuffleTrainInstances();
		const int inst_num_train1 = m_pipe_train.getInstanceNum();
		const int real_inst_num_train1_used_one_iter =
			(_inst_num_from_train1_one_iter > 0 && _inst_num_from_train1_one_iter < inst_num_train1) ? _inst_num_from_train1_one_iter : inst_num_train1;
		for (int i = 0; i < real_inst_num_train1_used_one_iter; ++i) {	// use the first-n1/n2 instances  of each corpus
			_inst_idx_to_read.push_back(i);
		}
		if (_use_train2) {
			m_pipe_train2.shuffleTrainInstances();
			const int inst_num_train2 = m_pipe_train2.getInstanceNum();
			const int real_inst_num_train2_used_one_iter =
				(_inst_num_from_train2_one_iter > 0 && _inst_num_from_train2_one_iter < inst_num_train2) ? _inst_num_from_train2_one_iter : inst_num_train2;
			for (int i = 0; i < real_inst_num_train2_used_one_iter; ++i) {
				_inst_idx_to_read.push_back(inst_num_train1 + i);	// if idx >= inst_num_train1, then it comes from corpus 2.
			}
		}
		cerr << "instance num from train1: " << real_inst_num_train1_used_one_iter << endl;
		if (_use_train2) {
			cerr << "instance num from train2: " << _inst_idx_to_read.size() - real_inst_num_train1_used_one_iter << endl;
			cerr << "instance num total: " << _inst_idx_to_read.size() << endl;
		}
		//random_shuffle(_inst_idx_to_read.begin(), _inst_idx_to_read.end());	// randomize the instances from two corpus
	}

	void Parser::train()
	{
		cerr << "train begining..." << endl;
		_best_iter_num_so_far = 0;
		_best_accuracy = 0.;

		_number_processed = 0;
		update_iter = 0;
		int iter = 1;
		for (; iter <= _iter_num; iter++) {
			//for (; iter <= 3; iter++) {
			cerr << "\n***** Iteration #" << iter << " *****"; print_time();
			prepare_train_instances();
			cerr << "preprocess instance done" << endl;
			train_one_iteration(iter);

			cerr << "\n*** decoding: on " << m_pipe_dev.in_file_name() << " [it=" << iter << "]"; print_time();
			reset_evaluate_metrics();
			evaluate(m_pipe_dev, false);
			cerr << "\n done "; print_time();
			output_evaluate_metrics();

			//double this_accuracy = 100.0 * word_num_label_correct / word_num_total;
			double this_accuracy = 100.0 * word_num_dep_correct / word_num_total;

			vector<int> del;
			if (this_accuracy > _best_accuracy + 1e-5) {
				if (_best_iter_num_so_far > 0) {
					del.push_back(_best_iter_num_so_far);
				}
				_best_iter_num_so_far = iter;
				_best_accuracy = this_accuracy;
			}

			if (_best_iter_num_so_far > 0) cerr << "\nbest UAS so far (a): " << _best_accuracy << " [it = " << _best_iter_num_so_far << "]" << endl;

			if (_best_iter_num_so_far == iter) save_parameters(iter);
			if (_best_iter_num_so_far + _stop_iter_num_no_increase < iter) {
				cerr << "\n\n ---- STOP training due to no accuracy increase in many iterations!" << endl;
				break;
			}
		}
	}

	void Parser::train_one_iteration(const int iter_num)
	{
		lossSum = 0.0;
		_eval.reset();
		const int inst_num = get_inst_num_one_iter();
		const bool is_train = true;
		for (int i = 0; i < inst_num;) {
			sp_thread_mutex_init(&_mutex, NULL);
			sp_thread_mutex_init(&_global_mutex, NULL);
			sp_thread_mutex_init(&_global_precomputation_mutex, NULL);
			int j = 0;
			vector<Instance *> inst_list;
			inst_list.reserve(0);
			int word_num = 0;
			for (; j < m_option.batchSize; j++, i++) { //m_option.batchSize @kiro
				if (i >= inst_num) break;
				Instance *inst = get_instance(i);
				word_num += inst->size();
				inst_list.push_back(inst);
			}
			decode_insts(inst_list, true);
			wait_all_jobs_done(_tp);
			sp_thread_mutex_destroy(&_mutex);
			sp_thread_mutex_destroy(&_global_mutex);
			sp_thread_mutex_destroy(&_global_precomputation_mutex);

			update_iter++;
			updateModel(update_iter, word_num);

			if (i % _display_interval == 0) cerr << i << " ";
			if (i % (_display_interval * 10) == 0) print_time();
		}
		if (update_iter % 5000 == 0)
			_ada_gradient._alpha *= 0.75;
	}

	void Parser::decode_insts(vector<Instance *> insts, bool train) {
		vector<Decoder *> decodes;
		Graph _graph;
		_graph.clearValue(true);
		int size = insts.size();
		decodes.resize(size);
		for (int i = 0; i < size; i++) {
			Instance * it = insts[i];
			decodes[i] = new_decoder(&_modelparams, &_hyperparams, &_fgen, train, it, &m_option);
			decodes[i]->forward(&_graph);
		}
		_graph.compute();
				
		for (int j = 0; j < size; j++) {
			decodes[j]->compute_parse_logits_loss();
		}
		_graph.backward();

		_graph.clearValue();
		for (int j = 0; j < size; j++) {
			delete_decoder(decodes[j]);
			delete_one_train_instance_after_update_gradient(insts[j]);
		}
		decodes.clear();
		insts.clear();
	}

	void Parser::decode_one_inst(Instance * inst, bool train) {
		Decoder * decode;
		Graph _graph;
		_graph.clearValue();
		decode = new_decoder(&_modelparams, &_hyperparams, &_fgen, train, inst, &m_option);
		decode->forward(&_graph);
		_graph.compute();	
		decode->get_result();
		_graph.clearValue();
		delete_decoder(decode);
	}

	void Parser::pre_train()
	{
		m_pipe_train.openInputFile(_filename_train.c_str());
		m_pipe_train.getInstancesFromInputFile(0, _inst_max_num_train, _inst_max_len_to_throw);

		if (_use_train2) {
			const int inst_num_train1 = m_pipe_train.getInstanceNum();
			m_pipe_train2.openInputFile(_filename_train2.c_str());
			m_pipe_train2.getInstancesFromInputFile(inst_num_train1, _inst_max_num_train2, _inst_max_len_to_throw, 0);
		}

		m_pipe_dev.use_instances_posi(false);
		m_pipe_dev.openInputFile(_filename_dev.c_str());
		m_pipe_dev.getInstancesFromInputFile(0, _inst_max_num_eval, _inst_max_len_to_throw);
		m_pipe_dev.closeInputFile();

		if (!_dictionary_exist) {
			_fgen.start_generation_mode();
			create_dictionaries(m_pipe_train, true);
			if (_use_train2)
				create_dictionaries(m_pipe_train2, true);
			_fgen.stop_generation_mode();
			save_dictionaries();
			exit(0);
		}
		load_dictionaries();
	}

	void Parser::evaluate(IOPipe &pipe, const bool is_test)
	{
		if (pipe.use_instances_posi()) {
			cerr << "do not use_instances_posi for test/dev data: " << pipe.input_filename() << endl;
			exit(-1);
		}

		const int inst_num = pipe.getInstanceNum();
		inst_num_processed_total += inst_num;
		const bool is_train = false;

		/*for (int i = 0; i < inst_num; ++i) {
			Instance *inst = pipe.getInstance(i);
			get_word_pos_label_id(inst);
		}*/

		sp_thread_mutex_init(&_global_mutex, NULL);
		sp_thread_mutex_init(&_global_precomputation_mutex, NULL);

		int eval_batch = 30;
		int word =0;
		for (int i = 0; i < inst_num; ++i) {
			Instance *inst = pipe.getInstance(i);
			decode_one_inst(inst, false);
			word += inst->size();
		}

		for (int i = 0; i < inst_num; ++i) {
			Instance *inst = pipe.getInstance(i);
			if (_test)
				m_pipe_test.writeInstance(inst);
			evaluate_one_instance(inst);
			//delete_one_eval_instance(inst);
		}
		cerr << "\ninstance num: " << inst_num; print_time();
	}

	void Parser::reset_evaluate_metrics() {
		inst_num_processed_total = 0;
		word_num_total = 0;
		word_num_label_correct = 0;
		word_num_dep_correct = 0;
		sent_num_root_corect = 0;
		sent_num_CM = 0;
	}

	void Parser::output_evaluate_metrics() {
		cerr.precision(5);
		if (inst_num_processed_total > 0) cerr << "CM:    \t" << sent_num_CM << "/" << inst_num_processed_total << " = " << sent_num_CM*100.0 / inst_num_processed_total << endl;
		if (inst_num_processed_total > 0) cerr << "ROOT:  \t" << sent_num_root_corect << "/" << inst_num_processed_total << " = " << sent_num_root_corect*100.0 / inst_num_processed_total << endl;
		if (word_num_total > 0)           cerr << "UAS:   \t" << word_num_dep_correct << "/" << word_num_total << " = " << word_num_dep_correct*100.0 / word_num_total << endl;
		if (word_num_total > 0)           cerr << "LAS:   \t" << word_num_label_correct << "/" << word_num_total << " = " << word_num_label_correct*100.0 / word_num_total << endl;
	}

	void Parser::test(const int iter)
	{
		assert(iter >= 1);
		cerr << "\n\n eval: " << iter; print_time();

		m_pipe_test.use_instances_posi(false);
		m_pipe_test.openInputFile(_filename_test.c_str());
		m_pipe_test.openOutputFile(_filename_output.c_str());

		if (!_train) {
			load_dictionaries();
		}

		load_parameters(iter);
		cout <<"load param done" << endl;
		reset_evaluate_metrics();

		int start_id = 0;
		while (1) {
			const int inst_num_left = _inst_max_num_eval < 0 ? _test_batch_size : (_inst_max_num_eval - inst_num_processed_total);
			if (inst_num_left <= 0) break;

			m_pipe_test.getInstancesFromInputFile(start_id,
				_test_batch_size < inst_num_left ? _test_batch_size : inst_num_left,
				_inst_max_len_to_throw);

			if (m_pipe_test.getInstanceNum() <= 0) break;

			start_id += m_pipe_test.getInstanceNum();

			evaluate(m_pipe_test, true);
		}
		cerr << "done";  print_time();
		output_evaluate_metrics();

		m_pipe_test.closeInputFile();
		m_pipe_test.closeOutputFile();
	}

	bool pair_int_double_compare(const pair<int, double> &a, const pair<int, double> &b) {
		return a.second < b.second;
	}

	void output(const vector< pair<int, double> > &vec_pair) {
		for (int i = 0; i < vec_pair.size(); ++i) {
			cerr << vec_pair[i].first << " " << vec_pair[i].second << endl;
		}
	}

	int get_int_at_least_one(double d) {
		const int i = (int)(d);
		const double x = d - (double)(i);
		if (x > 0.5) {
			return (i + 1);
		}
		else {
			return max(1, i);
		}
	}

	void Parser::create_dictionaries(IOPipe &pipe, const bool only_collect_label)
	{
		cerr << "\ncreating dictionaries from " << pipe.input_filename();
		print_time();
		_fgen.get_word_id(UNKNOWN);
		for (int i = 0; i < pipe.getInstanceNum(); ++i) {
			Instance *inst = pipe.getInstance(i);
			get_word_pos_label_id(inst);
			if (pipe.use_instances_posi()) {
				delete inst;
			}
			if (i % _display_interval == 0) cerr << i << " ";
			if (i % (_display_interval * 10) == 0) print_time();
		}

		cerr << "\ninstance num: " << pipe.getInstanceNum() << endl;
		cerr << "create dictionaries done"; print_time();
	}

	void Parser::error_num_dp(const Instance *inst, const bool bIncludePunc, int &nDepError, int &nLabelError, int &nUnscoredToken, bool &bRootCorrect) const
	{
		nDepError = 0;
		nLabelError = 0;
		bRootCorrect = false;
		nUnscoredToken = 0;
		for (int i = 1; i < inst->size(); ++i) {
			if (0 == inst->predicted_heads[i] && 0 == inst->heads[i]) bRootCorrect = true;
			if (inst->predicted_heads[i] != inst->heads[i]) {
				++nDepError;
				++nLabelError;
			}
			/*else if (inst->predicted_labels[i] != inst->deprels[i]) {
				++nLabelError;
			}*/
		}
	}

	void Parser::evaluate_one_instance(const Instance * const inst)
	{
		const int length = inst->size();

		bool bRootCorrect;
		int nDepError, nLabelError, nUnscoredToken;
		error_num_dp(inst, false, nDepError, nLabelError, nUnscoredToken, bRootCorrect);
		word_num_total += length - 1 - nUnscoredToken;
		word_num_dep_correct += length - 1 - nUnscoredToken - nDepError;
		word_num_label_correct += length - 1 - nUnscoredToken - nLabelError;
		if (bRootCorrect) ++sent_num_root_corect;
		if (0 == nDepError && 0 == nLabelError) ++sent_num_CM;
	}

} // namespace dparser



