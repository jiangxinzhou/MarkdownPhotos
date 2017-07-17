/*
 * ModelUpdate.h
 *
 *  Created on: Jul 20, 2016
 *      Author: mason
 */

#ifndef ModelUpdate_H_
#define ModelUpdate_H_

#include "BaseParam.h"
#include "MyLib.h"


class ModelUpdate {

public:
	vector<BaseParam*> _params;

	dtype _reg, _alpha, _eps;
	dtype _belta1, _belta2;

public:
	ModelUpdate(){
		_params.clear();

		_reg = 0;
		_alpha = 0.01;
		_eps = 1e-12;

		_belta1 = 0.9;
		_belta2 = 0.9;
	}


public:

	inline void addParam(BaseParam* param){
		_params.push_back(param);
	}
	
	inline void addParam(const vector<BaseParam*>& params){
		for(int idx = 0; idx < params.size(); idx++){
			_params.push_back(params[idx]);
		}
	}	
	
	inline void update(){
		for(int idx = 0; idx < _params.size(); idx++){
			_params[idx]->updateAdagrad(_alpha, _reg, _eps);
			_params[idx]->clearGrad();
		}
	}

	inline void update(dtype maxScale){
		dtype sumNorm = 0.0;
		for (int idx = 0; idx < _params.size(); idx++){
			sumNorm += _params[idx]->squareGradNorm();
		}
		if (std::isnan(double(sumNorm)) || sumNorm > 1e20){ //too large
			clearGrad();
			return;
		}
		dtype norm = sqrt(sumNorm);
		if (norm > maxScale){
			dtype scale = maxScale / norm;
			for (int idx = 0; idx < _params.size(); idx++){
				_params[idx]->rescaleGrad(scale);
			}
		}

		update();
	}

	inline void updateAdam(int wordNum) {
		for (int idx = 0; idx < _params.size(); idx++) {
			_params[idx]->updateAdam(_belta1, _belta2, _alpha, _reg, _eps, wordNum);
			_params[idx]->clearGrad();
		}
	}

	inline void gradient_clip(dtype clip) {
		dtype grad_sum = 0.0;
		for (int idx = 0; idx < _params.size(); idx++) {
			grad_sum += _params[idx]->squareGradNorm();
		}

		if (grad_sum > clip*clip) {
			dtype scale = clip / sqrt(grad_sum);
			for (int idx = 0; idx < _params.size(); idx++) {
				_params[idx]->rescaleGrad(scale);
			}
		}
	}

	inline void updateAdam(dtype maxScale) {
		dtype sumNorm = 0.0;
		for (int idx = 0; idx < _params.size(); idx++) {
			sumNorm += _params[idx]->squareGradNorm();
		}
		if (std::isnan(double(sumNorm)) || sumNorm > 1e20) { //too large
			clearGrad();
			return;
		}
		dtype norm = sqrt(sumNorm);
		if (maxScale > 0 && norm > maxScale) {
			dtype scale = maxScale / norm;
			for (int idx = 0; idx < _params.size(); idx++) {
				_params[idx]->rescaleGrad(scale);
			}
		}
		updateAdam(1);
	}

    inline void rescaleGrad(dtype scale) {
        for (int idx = 0; idx < _params.size(); idx++) {
            _params[idx]->rescaleGrad(scale);
        }
    }

	inline void clearGrad(){
		for(int idx = 0; idx < _params.size(); idx++){
			_params[idx]->clearGrad();
		}
	}

	inline void gradClip(dtype maxScale) {
		dtype sumNorm = 0.0;
		for (int idx = 0; idx < _params.size(); idx++) {
			sumNorm += _params[idx]->squareGradNorm();
		}
		if (std::isnan(double(sumNorm)) || sumNorm > 1e20) { //too large
			clearGrad();
			return;
		}
		dtype norm = sqrt(sumNorm);
		if (maxScale > 0 && norm > maxScale) {
			dtype scale = maxScale / norm;
			for (int idx = 0; idx < _params.size(); idx++) {
				_params[idx]->rescaleGrad(scale);
			}
		}
	}
	
	inline void clear(){
		_params.clear();
	}


};



#endif /* ModelUpdate_H_ */
