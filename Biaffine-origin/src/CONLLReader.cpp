#include "CONLLReader.h"
#include "CharUtils.h"
#include "CppAssert.h"
#include "MyLib.h"

#include <sstream>
using namespace std;

namespace dparser {


	void CONLLReader::decompose_sent( Instance * const inst )
	{
		reset_sent(inst, m_vecLine.size()+1);
		for (int i = 0; i < m_vecLine.size(); ++i) {
			vector<string> tokens;
			egstra::simpleTokenize(m_vecLine[i], tokens, "\t\r\n ");
			if (tokens.size() > 10 || tokens.size() < 8) {
				cerr << "\nInvalid corpus line: " << m_vecLine[i] << endl;
				cerr << "may need dos2unix!" << endl;
				inst->forms.push_back(""); // signal for bad format (Wenliang's BLLIP data has some bad cases: \t\t_);
				return;
			}

			//if (tokens[3] != "_" && tokens[4] != "_" && tokens[3] != tokens[4]) {
			//	cerr << "wenliang data CPOS != POS: " << tokens[3] << " " << tokens[4] << endl;
			//}

			inst->forms[i+1] = tokens[1];
			inst->orig_lemmas[i+1] = tokens[2];
			inst->orig_cpostags[i+1] = tokens[3];
			inst->postags[i+1] = tokens[4];
			inst->orig_feats[i+1] = tokens[5];

			if (tokens[6] == "_") inst->heads[i+1] = -1;
			else inst->heads[i+1] = egstra::toInteger(tokens[6]);

			inst->deprels[i+1] = tokens[7];

			if (tokens.size() > 8) {
				inst->pheads[i+1] = tokens[8];
				inst->pdeprels[i+1] = tokens[9];
			}
		}
		inst->cpostags = inst->orig_cpostags;
	}

	void CONLLReader::reset_sent( Instance * const inst, const int length )
	{
		inst->forms.resize(length); 
		inst->orig_lemmas.resize(length);
		inst->orig_cpostags.resize(length);
		inst->postags.resize(length);
		inst->orig_feats.resize(length);
		inst->heads.resize(length);
		inst->deprels.resize(length);
		inst->pheads.resize(length);
		inst->pdeprels.resize(length);

		inst->forms[0] = NO_FORM;
		inst->orig_lemmas[0] = NO_FORM;
		inst->orig_cpostags[0] = NO_FORM;
		inst->postags[0] = NO_FORM;
		inst->orig_feats[0] = NO_FORM;
		inst->heads[0] = ROOT_HEAD;
		inst->deprels[0] = NO_FORM;
		inst->pheads[0] = NO_FORM;
		inst->pdeprels[0] = NO_FORM;
	}

	int CONLLReader::read_lines()
	{
		m_vecLine.clear();
		while (1) {
			string strLine;
			if (!my_getline(m_inf, strLine)) {
				break;
			}
			if (strLine.empty()) break;
			m_vecLine.push_back(strLine);
		}
		return m_vecLine.size();
	}

} // namespace dparser



