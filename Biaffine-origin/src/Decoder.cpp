#include "Decoder.h"

namespace dparser {
	void Decoder::get_result()
	{
		get_head_prob();
		get_max();
		//get_rel_prob();
		//get_max_conditional();
		//int len = _inst->size();
		//_inst->predicted_labels_id.resize(len);
		//_fgen->assign_predicted_label_str(_inst, _inst->predicted_labels_id);
	}

	void Decoder::get_max()
	{
		int len = _inst->size();
		_inst->predicted_heads.resize(len);
		for (int i = 1; i < len; i++) {
			double max = head_prob[i][0];
			int index = 0;
			for (int j = 1; j < len; j++) {
				if (head_prob[i][j] > max + EPS) {
					index = j;
					max = head_prob[i][j];
				}
			}
			_inst->predicted_heads[i] = index;
		}
	}

	void Decoder::get_max_conditional()
	{
		/*int len = _inst->size();
		_inst->predicted_labels_id.resize(len);
		for (int i = 0; i < len; i++) {
			double max = rel_prob[i][0];
			int index = 0;
			for (int j = 1; j < _label_num; j++) {
				if (rel_prob[i][j] > max + EPS) {
					index = j;
					max = rel_prob[i][j];
				}
			}
			_inst->predicted_labels_id[i] = index;
		}*/
	}

	void Decoder::get_head_prob()
	{
		int len = _inst->size();
		for (int i = 1; i < len; i++) {
			for (int j = 0; j < len; j++) {
				head_prob[i][j] = parse_logits.vals[0].mat()(i, j);
			}
		}
	}

	void Decoder::get_rel_prob()
	{
		/*int len = _inst->size();
		for (int i = 1; i < len; i++) {
			int head = _is_train ? _inst->heads[i] : _inst->predicted_heads[i];
			for (int l = 0; l < _label_num; l++) {
				rel_prob[i][l] = rel_logits.vals[l].mat()(i, head);
			}
		}*/
	}

	void Decoder::forward(Graph * _graph)
	{
		const int len = _inst->size();
		for (int i = 0; i < len; i++) {
			word_pret_emb[i].forward(_graph, _inst->forms[i]);
			word_rand_emb[i].forward(_graph, _inst->forms[i]);
			word_emb[i].forward(_graph, &word_pret_emb[i], &word_rand_emb[i]);

			tag_emb[i].forward(_graph, _inst->postags[i]);
			tag_emb_drop[i].forward(_graph, &tag_emb[i]);

			emb_input[i].forward(_graph, &word_emb[i], &tag_emb_drop[i]);
			emb_input_drop[i].forward(_graph, &emb_input[i]);
		}

		lstm_build.forward(_graph, getPNodes(emb_input_drop, emb_input_drop.size()), _is_train);
		lstm_build_right.forward(_graph, getPNodes(emb_input_drop, emb_input_drop.size()), _is_train);
		for (int i = 0; i < len; i++) {
			lstm_output[i].forward(_graph, &lstm_build._hiddens[i], &lstm_build_right._hiddens[i]);
			lstm_output_drop[i].forward(_graph, &lstm_output[i]);
		}

		lstm_build1.forward(_graph, getPNodes(lstm_output_drop, lstm_output_drop.size()), _is_train);
		lstm_build_right1.forward(_graph, getPNodes(lstm_output_drop, lstm_output_drop.size()), _is_train);
		for (int i = 0; i < len; i++) {
			lstm_output1[i].forward(_graph, &lstm_build1._hiddens[i], &lstm_build_right1._hiddens[i]);
			lstm_output1_drop[i].forward(_graph, &lstm_output1[i]);
		}

		/*lstm_build2.forward(_graph, getPNodes(lstm_output1_drop, lstm_output1_drop.size()), _is_train);
		lstm_build_right2.forward(_graph, getPNodes(lstm_output1_drop, lstm_output1_drop.size()), _is_train);
		for (int i = 0; i < len; i++) {
			lstm_output2[i].forward(_graph, &lstm_build2._hiddens[i], &lstm_build_right2._hiddens[i]);
			lstm_output2_drop[i].forward(_graph, &lstm_output2[i]);
		}*/

		for (int i = 0; i < len; i++) {
			mlp_head[i].forward(_graph, &lstm_output1_drop[i]);
			mlp_head_drop[i].forward(_graph, &mlp_head[i]);

			mlp_dep[i].forward(_graph, &lstm_output1_drop[i]);
			mlp_dep_drop[i].forward(_graph, &mlp_dep[i]);
		}
		parse_logits.forward(_graph, getPNodes(mlp_dep_drop, mlp_dep_drop.size()), getPNodes(mlp_head_drop, mlp_head_drop.size()));

		/*for (int i = 1; i < len; i++){
			mlp_rel[i].forward(&_graph, &lstm_output2_drop[i]);
			mlp_rel_drop[i].forward(&_graph, &mlp_rel[i]);

			mlp_head_rel[i].forward(&_graph, &lstm_output2_drop[i]);
			mlp_head_rel_drop[i].forward(&_graph, &mlp_head_rel[i]);
		}
		rel_logits.forward(&_graph, getPNodes(mlp_rel_drop,mlp_rel_drop.size()), getPNodes(mlp_head_rel_drop,mlp_head_rel_drop.size()));*/
	}

	void Decoder::compute_parse_logits_loss() {
		get_head_prob();
		int len = _inst->size();
		for (int i = 0; i < len; i++) {
			if (i == 0) {
				continue;
			}
			double Z = 0.0;
			double max_score = DOUBLE_NEGATIVE_INFINITY;
			for (int j = 0; j < len; j++) {
				if (head_prob[i][j] > max_score)
					max_score = head_prob[i][j];
			}
			for (int j = 0; j < len; j++) {
				Z += exp(head_prob[i][j] - max_score);
			}

			for (int j = 0; j < len; j++) {
				double loss = exp(head_prob[i][j] - max_score) / Z + (_inst->heads[i] == j ? -1.0 : 0.0);
				parse_logits.losses[0].mat()(i, j) += loss;
			}
		}
	}

	void Decoder::compute_rel_logits_loss() {
		int len = _inst->size();

		/*for (int i = 1; i < len; i++){
			int head = _inst->heads[i];
			for (int l = 0; l < _label_num; l++){
				if (rel_logits[i][head].losses[l].size() == 0) {
					rel_logits[i][head].losses[l] = Mat::Zero(1, 1);
				}
			}
			double Z = 0.0;
			double max_score = DOUBLE_NEGATIVE_INFINITY;
			for (int l = 0; l < _label_num; l++){
				if (rel_prob[i][l] > max_score)
					max_score = rel_prob[i][l];
			}
			for (int l = 0; l < _label_num; l++){
				Z += exp(rel_prob[i][l] - max_score);
			}
			for (int l = 0; l < _label_num; l++){
				double loss = exp(rel_prob[i][l] - max_score) / Z + (_inst->labels_id[i] == l ? -1.0 : 0.0);
				rel_logits[i][head].losses[l](0, 0) += loss;
			}
		}*/
	}
} // namespace dparser

