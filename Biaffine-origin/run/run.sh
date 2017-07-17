#/bin/bash

home=$HOME
datap=/data/xzjiang/GPU-study/data/Baidu_PTB_SD
train=$datap/ptb.english.conll.train.txt.opentest.tag
#train=$datap/ptb.english.conll.dev.txt.tag
dev=$datap/ptb.english.conll.dev.txt.tag
test=$datap/ptb.english.conll.test.txt.tag

parser="../BiaffineParser-origin config.txt LibN3L3"
$parser --train=1 --test=0 --dictionary-exist=0 --train-file=$train --dev-file=$dev > log.create-model 2>&1 
$parser --train=1 --test=0 --dictionary-exist=1 --train-file=$train --dev-file=$dev > log.train.t 2>&1 

out=test.out.conll
 
#$parser --train=0 --test=1  --inst-max-num-eval=-1  --test-file=$test --output-file=$out --param-num-for-eval=060 > log.test 2>&1 


