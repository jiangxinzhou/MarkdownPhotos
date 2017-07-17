8
use-train-2 = 0
parameter-path = .
thread-num = 1
filtered-arc-train1 = 0
option_file_path = ./option.txt
inst-max-num-eval = -1000
inst-max-len-to-throw = -10
fcutoff = 0
inst-num-from-train-1-one-iter = 10000
display-interval = 100
param-num-for-eval = 6
param-tmp-num = 1
inst-max-num-train = -1000
test-batch-size = 10000
labeled = 1
conservative-constrained-training = 0 
test = 0
iter-num = 1000
parameter-exist = 1
dictionary-path = .
dev-file = /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag
test-file = /data/xzjiang/GPU-study/data/Baidu_PTB_SD/test.conll
output-file = test.out.conll06
train = 1
dictionary-exist = 1
train-file = /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.train.txt.opentest.tag
wordCutOff = 0
featCutOff = 0
charCutOff = 0
initRange = 0.01
maxIter = 1000
batchSize = 200
adaEps = 1e-12
adaAlpha = 0.01
momentum = 0.85
regParameter = 0
dropProb = 0
clip = 15
segHiddenSize = 100
hiddenSize = 200
rnnHiddenSize = 100
wordEmbeddingDim = 100
posEmbeddingDim = 100
wordcontext = 2
wordEmbFineTune = 1
charEmbSize = 50
charcontext = 2
charEmbFineTune = 1
charhiddenSize = 50
typeEmbSize = 50
typeEmbFineTune = 1
verboseIter = 1
saveItermediate = 1
train = 0
maxInstance = 10
outBest = .debug
relu = 0
seg = 1
atomLayers = 1
rnnLayers = 1
maxsegLen = 5
beam = 1
maxlength = 256
wordFile = /data/xzjiang/GPU-study/data/Baidu_PTB_SD/glove.6B.100d.txt
charFile = 
segFile = 
mlp_size = 100
mlp_rel_size = 100
lstm_output_size = 300
Get all instances from /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.train.txt.opentest.tag	[Sat Jul 15 18:08:40 2017]

instance num: 39832
Done!	[Sat Jul 15 18:08:42 2017]
Get all instances from /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag	[Sat Jul 15 18:08:42 2017]

instance num: 1700
Done!	[Sat Jul 15 18:08:42 2017]
FGen : loading feature dictionaries from "."	[Sat Jul 15 18:08:42 2017]
FeatureDictionary : loading from "./words.gz" 
FeatureDictionary :  44391 features
FeatureDictionary : loading from "./pos.gz" 
FeatureDictionary :  45 features
FeatureDictionary : loading from "./labels.gz" 
FeatureDictionary :  45 features
word number: 44391
pos number: 45
label number: 45

 done!
	[Sat Jul 15 18:08:42 2017]
load dict done!
word embedding dim is 100
-UNKNOWN- not found, using averaged value to initialize.
OOV num is 18761, total num is 44391, embedding oov ratio is 0.422631
unknown id2
unknown id2
unknown id-1
train begining...

***** Iteration #1 *****	[Sat Jul 15 18:08:48 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 18:10:10 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 18:11:29 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 18:12:43 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 18:13:58 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 18:15:15 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 18:16:30 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 18:17:47 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 18:19:02 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 18:20:20 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 18:21:37 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=1]	[Sat Jul 15 18:21:37 2017]

instance num: 1700	[Sat Jul 15 18:25:17 2017]

 done 	[Sat Jul 15 18:25:17 2017]
CM:    	100/1700 = 5.88235
ROOT:  	1327/1700 = 78.05882
UAS:   	27776/40117 = 69.23748
LAS:   	27776/40117 = 69.23748

best UAS so far (a): 69.23748 [it = 1]

***** Iteration #2 *****	[Sat Jul 15 18:25:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 18:26:50 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 18:28:04 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 18:29:20 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 18:30:35 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 18:31:53 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 18:33:11 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 18:34:28 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 18:35:42 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 18:36:57 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 18:38:13 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=2]	[Sat Jul 15 18:38:13 2017]

instance num: 1700	[Sat Jul 15 18:42:07 2017]

 done 	[Sat Jul 15 18:42:07 2017]
CM:    	266/1700 = 15.64706
ROOT:  	1567/1700 = 92.17647
UAS:   	32369/40117 = 80.68649
LAS:   	32369/40117 = 80.68649

best UAS so far (a): 80.68649 [it = 2]

***** Iteration #3 *****	[Sat Jul 15 18:42:20 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 18:43:40 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 18:44:55 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 18:46:10 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 18:47:29 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 18:48:45 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 18:50:04 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 18:51:20 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 18:52:36 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 18:53:58 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 18:55:16 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=3]	[Sat Jul 15 18:55:16 2017]

instance num: 1700	[Sat Jul 15 18:58:52 2017]

 done 	[Sat Jul 15 18:58:52 2017]
CM:    	347/1700 = 20.41176
ROOT:  	1570/1700 = 92.35294
UAS:   	33943/40117 = 84.61002
LAS:   	33943/40117 = 84.61002

best UAS so far (a): 84.61002 [it = 3]

***** Iteration #4 *****	[Sat Jul 15 18:59:05 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 19:00:19 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 19:01:34 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 19:02:50 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 19:04:04 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 19:05:24 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 19:06:39 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 19:07:51 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 19:09:05 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 19:10:17 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 19:11:32 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=4]	[Sat Jul 15 19:11:32 2017]

instance num: 1700	[Sat Jul 15 19:14:37 2017]

 done 	[Sat Jul 15 19:14:37 2017]
CM:    	412/1700 = 24.23529
ROOT:  	1606/1700 = 94.47059
UAS:   	34634/40117 = 86.33248
LAS:   	34634/40117 = 86.33248

best UAS so far (a): 86.33248 [it = 4]

***** Iteration #5 *****	[Sat Jul 15 19:14:50 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 19:16:01 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 19:17:13 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 19:18:22 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 19:19:35 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 19:20:45 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 19:21:59 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 19:23:12 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 19:24:23 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 19:25:34 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 19:26:45 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=5]	[Sat Jul 15 19:26:45 2017]

instance num: 1700	[Sat Jul 15 19:29:57 2017]

 done 	[Sat Jul 15 19:29:57 2017]
CM:    	452/1700 = 26.58824
ROOT:  	1618/1700 = 95.17647
UAS:   	35176/40117 = 87.68353
LAS:   	35176/40117 = 87.68353

best UAS so far (a): 87.68353 [it = 5]

***** Iteration #6 *****	[Sat Jul 15 19:30:10 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 19:31:23 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 19:32:34 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 19:33:46 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 19:34:58 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 19:36:09 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 19:37:21 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 19:38:33 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 19:39:42 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 19:40:53 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 19:42:06 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=6]	[Sat Jul 15 19:42:06 2017]

instance num: 1700	[Sat Jul 15 19:45:21 2017]

 done 	[Sat Jul 15 19:45:21 2017]
CM:    	482/1700 = 28.35294
ROOT:  	1606/1700 = 94.47059
UAS:   	35523/40117 = 88.54850
LAS:   	35523/40117 = 88.54850

best UAS so far (a): 88.54850 [it = 6]

***** Iteration #7 *****	[Sat Jul 15 19:45:34 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 19:46:45 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 19:47:57 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 19:49:08 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 19:50:18 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 19:51:27 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 19:52:38 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 19:53:49 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 19:55:02 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 19:56:15 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 19:57:27 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=7]	[Sat Jul 15 19:57:27 2017]

instance num: 1700	[Sat Jul 15 20:00:36 2017]

 done 	[Sat Jul 15 20:00:36 2017]
CM:    	510/1700 = 30.00000
ROOT:  	1617/1700 = 95.11765
UAS:   	35688/40117 = 88.95979
LAS:   	35688/40117 = 88.95979

best UAS so far (a): 88.95979 [it = 7]

***** Iteration #8 *****	[Sat Jul 15 20:00:49 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 20:02:01 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 20:03:12 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 20:04:24 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 20:05:37 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 20:06:48 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 20:08:00 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 20:09:09 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 20:10:20 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 20:11:30 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 20:12:42 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=8]	[Sat Jul 15 20:12:42 2017]

instance num: 1700	[Sat Jul 15 20:16:11 2017]

 done 	[Sat Jul 15 20:16:11 2017]
CM:    	522/1700 = 30.70588
ROOT:  	1618/1700 = 95.17647
UAS:   	35849/40117 = 89.36112
LAS:   	35849/40117 = 89.36112

best UAS so far (a): 89.36112 [it = 8]

***** Iteration #9 *****	[Sat Jul 15 20:16:24 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 20:17:39 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 20:18:48 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 20:20:01 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 20:21:13 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 20:22:33 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 20:24:20 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 20:25:29 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 20:26:40 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 20:27:52 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 20:29:04 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=9]	[Sat Jul 15 20:29:04 2017]

instance num: 1700	[Sat Jul 15 20:32:09 2017]

 done 	[Sat Jul 15 20:32:09 2017]
CM:    	568/1700 = 33.41176
ROOT:  	1615/1700 = 95.00000
UAS:   	36114/40117 = 90.02169
LAS:   	36114/40117 = 90.02169

best UAS so far (a): 90.02169 [it = 9]

***** Iteration #10 *****	[Sat Jul 15 20:32:23 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 20:33:35 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 20:34:44 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 20:35:54 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 20:37:09 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 20:38:20 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 20:39:28 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 20:40:38 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 20:41:51 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 20:43:00 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 20:44:10 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=10]	[Sat Jul 15 20:44:10 2017]

instance num: 1700	[Sat Jul 15 20:47:44 2017]

 done 	[Sat Jul 15 20:47:44 2017]
CM:    	580/1700 = 34.11765
ROOT:  	1614/1700 = 94.94118
UAS:   	36125/40117 = 90.04911
LAS:   	36125/40117 = 90.04911

best UAS so far (a): 90.04911 [it = 10]

***** Iteration #11 *****	[Sat Jul 15 20:47:57 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 20:49:06 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 20:50:18 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 20:51:29 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 20:52:46 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 20:53:57 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 20:55:07 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 20:56:21 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 20:57:32 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 20:58:41 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 20:59:52 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=11]	[Sat Jul 15 20:59:52 2017]

instance num: 1700	[Sat Jul 15 21:03:36 2017]

 done 	[Sat Jul 15 21:03:36 2017]
CM:    	614/1700 = 36.11765
ROOT:  	1616/1700 = 95.05882
UAS:   	36258/40117 = 90.38064
LAS:   	36258/40117 = 90.38064

best UAS so far (a): 90.38064 [it = 11]

***** Iteration #12 *****	[Sat Jul 15 21:03:49 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 21:05:02 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 21:06:13 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 21:07:21 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 21:08:34 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 21:09:46 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 21:10:57 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 21:12:11 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 21:13:20 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 21:14:31 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 21:15:43 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=12]	[Sat Jul 15 21:15:43 2017]

instance num: 1700	[Sat Jul 15 21:18:55 2017]

 done 	[Sat Jul 15 21:18:55 2017]
CM:    	626/1700 = 36.82353
ROOT:  	1634/1700 = 96.11765
UAS:   	36413/40117 = 90.76701
LAS:   	36413/40117 = 90.76701

best UAS so far (a): 90.76701 [it = 12]

***** Iteration #13 *****	[Sat Jul 15 21:19:08 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 21:20:22 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 21:21:37 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 21:22:50 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 21:24:02 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 21:25:13 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 21:26:24 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 21:27:32 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 21:28:51 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 21:30:02 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 21:31:20 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=13]	[Sat Jul 15 21:31:20 2017]

instance num: 1700	[Sat Jul 15 21:34:36 2017]

 done 	[Sat Jul 15 21:34:36 2017]
CM:    	640/1700 = 37.64706
ROOT:  	1629/1700 = 95.82353
UAS:   	36505/40117 = 90.99634
LAS:   	36505/40117 = 90.99634

best UAS so far (a): 90.99634 [it = 13]

***** Iteration #14 *****	[Sat Jul 15 21:34:49 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 21:36:01 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 21:37:11 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 21:38:28 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 21:39:36 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 21:40:48 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 21:41:56 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 21:43:07 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 21:44:20 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 21:45:31 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 21:46:44 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=14]	[Sat Jul 15 21:46:44 2017]

instance num: 1700	[Sat Jul 15 21:49:55 2017]

 done 	[Sat Jul 15 21:49:55 2017]
CM:    	616/1700 = 36.23529
ROOT:  	1626/1700 = 95.64706
UAS:   	36470/40117 = 90.90909
LAS:   	36470/40117 = 90.90909

best UAS so far (a): 90.99634 [it = 13]

***** Iteration #15 *****	[Sat Jul 15 21:49:55 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 21:51:12 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 21:52:20 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 21:53:30 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 21:54:43 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 21:55:53 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 21:57:05 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 21:58:17 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 21:59:28 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 22:00:43 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 22:01:55 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=15]	[Sat Jul 15 22:01:55 2017]

instance num: 1700	[Sat Jul 15 22:05:03 2017]

 done 	[Sat Jul 15 22:05:03 2017]
CM:    	651/1700 = 38.29412
ROOT:  	1636/1700 = 96.23529
UAS:   	36554/40117 = 91.11848
LAS:   	36554/40117 = 91.11848

best UAS so far (a): 91.11848 [it = 15]

***** Iteration #16 *****	[Sat Jul 15 22:05:16 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 22:06:27 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 22:07:36 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 22:08:45 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 22:09:54 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 22:11:06 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 22:12:32 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 22:13:45 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 22:14:54 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 22:16:05 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 22:17:19 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=16]	[Sat Jul 15 22:17:19 2017]

instance num: 1700	[Sat Jul 15 22:20:28 2017]

 done 	[Sat Jul 15 22:20:28 2017]
CM:    	643/1700 = 37.82353
ROOT:  	1640/1700 = 96.47059
UAS:   	36673/40117 = 91.41511
LAS:   	36673/40117 = 91.41511

best UAS so far (a): 91.41511 [it = 16]

***** Iteration #17 *****	[Sat Jul 15 22:20:41 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 22:21:52 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 22:23:01 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 22:24:12 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 22:25:23 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 22:26:36 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 22:27:50 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 22:28:59 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 22:30:15 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 22:31:24 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 22:32:38 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=17]	[Sat Jul 15 22:32:38 2017]

instance num: 1700	[Sat Jul 15 22:35:54 2017]

 done 	[Sat Jul 15 22:35:54 2017]
CM:    	672/1700 = 39.52941
ROOT:  	1630/1700 = 95.88235
UAS:   	36627/40117 = 91.30045
LAS:   	36627/40117 = 91.30045

best UAS so far (a): 91.41511 [it = 16]

***** Iteration #18 *****	[Sat Jul 15 22:35:54 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 22:37:07 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 22:38:20 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 22:39:31 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 22:40:40 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 22:41:46 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 22:42:55 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 22:44:08 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 22:45:20 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 22:46:35 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 22:47:45 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=18]	[Sat Jul 15 22:47:45 2017]

instance num: 1700	[Sat Jul 15 22:50:59 2017]

 done 	[Sat Jul 15 22:50:59 2017]
CM:    	686/1700 = 40.35294
ROOT:  	1632/1700 = 96.00000
UAS:   	36758/40117 = 91.62699
LAS:   	36758/40117 = 91.62699

best UAS so far (a): 91.62699 [it = 18]

***** Iteration #19 *****	[Sat Jul 15 22:51:13 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 22:52:24 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 22:53:37 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 22:54:47 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 22:55:57 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 22:57:09 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 22:58:21 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 22:59:34 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 23:00:45 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 23:01:59 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 23:03:09 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=19]	[Sat Jul 15 23:03:09 2017]

instance num: 1700	[Sat Jul 15 23:06:24 2017]

 done 	[Sat Jul 15 23:06:24 2017]
CM:    	688/1700 = 40.47059
ROOT:  	1641/1700 = 96.52941
UAS:   	36729/40117 = 91.55470
LAS:   	36729/40117 = 91.55470

best UAS so far (a): 91.62699 [it = 18]

***** Iteration #20 *****	[Sat Jul 15 23:06:24 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 23:07:38 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 23:08:50 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 23:10:05 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 23:11:20 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 23:12:31 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 23:13:45 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 23:14:56 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 23:16:06 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 23:17:21 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 23:18:31 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=20]	[Sat Jul 15 23:18:31 2017]

instance num: 1700	[Sat Jul 15 23:21:42 2017]

 done 	[Sat Jul 15 23:21:42 2017]
CM:    	669/1700 = 39.35294
ROOT:  	1632/1700 = 96.00000
UAS:   	36714/40117 = 91.51731
LAS:   	36714/40117 = 91.51731

best UAS so far (a): 91.62699 [it = 18]

***** Iteration #21 *****	[Sat Jul 15 23:21:42 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 23:22:54 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 23:24:04 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 23:25:12 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 23:26:20 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 23:27:29 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 23:28:39 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 23:30:05 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 23:31:16 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 23:32:25 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 23:33:35 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=21]	[Sat Jul 15 23:33:35 2017]

instance num: 1700	[Sat Jul 15 23:36:50 2017]

 done 	[Sat Jul 15 23:36:50 2017]
CM:    	705/1700 = 41.47059
ROOT:  	1646/1700 = 96.82353
UAS:   	36821/40117 = 91.78403
LAS:   	36821/40117 = 91.78403

best UAS so far (a): 91.78403 [it = 21]

***** Iteration #22 *****	[Sat Jul 15 23:37:03 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 23:38:16 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 23:39:25 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 23:40:35 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 23:41:51 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 23:43:02 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 23:44:14 2017]
6200 6400 6600 6800 7000 	[Sat Jul 15 23:45:23 2017]
7200 7400 7600 7800 8000 	[Sat Jul 15 23:46:34 2017]
8200 8400 8600 8800 9000 	[Sat Jul 15 23:47:46 2017]
9200 9400 9600 9800 10000 	[Sat Jul 15 23:48:56 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=22]	[Sat Jul 15 23:48:56 2017]

instance num: 1700	[Sat Jul 15 23:51:56 2017]

 done 	[Sat Jul 15 23:51:56 2017]
CM:    	683/1700 = 40.17647
ROOT:  	1631/1700 = 95.94118
UAS:   	36755/40117 = 91.61951
LAS:   	36755/40117 = 91.61951

best UAS so far (a): 91.78403 [it = 21]

***** Iteration #23 *****	[Sat Jul 15 23:51:56 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sat Jul 15 23:53:05 2017]
1200 1400 1600 1800 2000 	[Sat Jul 15 23:54:15 2017]
2200 2400 2600 2800 3000 	[Sat Jul 15 23:55:23 2017]
3200 3400 3600 3800 4000 	[Sat Jul 15 23:56:34 2017]
4200 4400 4600 4800 5000 	[Sat Jul 15 23:57:42 2017]
5200 5400 5600 5800 6000 	[Sat Jul 15 23:58:55 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 00:00:04 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 00:01:19 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 00:02:34 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 00:03:46 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=23]	[Sun Jul 16 00:03:46 2017]

instance num: 1700	[Sun Jul 16 00:07:07 2017]

 done 	[Sun Jul 16 00:07:07 2017]
CM:    	678/1700 = 39.88235
ROOT:  	1637/1700 = 96.29412
UAS:   	36852/40117 = 91.86131
LAS:   	36852/40117 = 91.86131

best UAS so far (a): 91.86131 [it = 23]

***** Iteration #24 *****	[Sun Jul 16 00:07:20 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 00:08:30 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 00:09:39 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 00:10:45 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 00:11:54 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 00:13:04 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 00:14:12 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 00:15:22 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 00:16:34 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 00:17:46 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 00:18:56 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=24]	[Sun Jul 16 00:18:56 2017]

instance num: 1700	[Sun Jul 16 00:22:08 2017]

 done 	[Sun Jul 16 00:22:08 2017]
CM:    	698/1700 = 41.05882
ROOT:  	1641/1700 = 96.52941
UAS:   	36856/40117 = 91.87128
LAS:   	36856/40117 = 91.87128

best UAS so far (a): 91.87128 [it = 24]

***** Iteration #25 *****	[Sun Jul 16 00:22:22 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 00:23:33 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 00:24:46 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 00:26:29 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 00:27:43 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 00:28:53 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 00:30:01 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 00:31:23 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 00:32:41 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 00:33:49 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 00:34:59 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=25]	[Sun Jul 16 00:34:59 2017]

instance num: 1700	[Sun Jul 16 00:38:17 2017]

 done 	[Sun Jul 16 00:38:17 2017]
CM:    	698/1700 = 41.05882
ROOT:  	1638/1700 = 96.35294
UAS:   	36858/40117 = 91.87626
LAS:   	36858/40117 = 91.87626

best UAS so far (a): 91.87626 [it = 25]

***** Iteration #26 *****	[Sun Jul 16 00:38:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 00:39:43 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 00:40:55 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 00:42:06 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 00:43:19 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 00:44:31 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 00:45:42 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 00:46:53 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 00:48:05 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 00:49:16 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 00:50:25 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=26]	[Sun Jul 16 00:50:25 2017]

instance num: 1700	[Sun Jul 16 00:53:37 2017]

 done 	[Sun Jul 16 00:53:37 2017]
CM:    	700/1700 = 41.17647
ROOT:  	1633/1700 = 96.05882
UAS:   	36888/40117 = 91.95104
LAS:   	36888/40117 = 91.95104

best UAS so far (a): 91.95104 [it = 26]

***** Iteration #27 *****	[Sun Jul 16 00:53:50 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 00:54:59 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 00:56:12 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 00:57:22 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 00:58:33 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 00:59:45 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 01:01:01 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 01:02:15 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 01:03:27 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 01:04:38 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 01:05:49 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=27]	[Sun Jul 16 01:05:49 2017]

instance num: 1700	[Sun Jul 16 01:08:33 2017]

 done 	[Sun Jul 16 01:08:33 2017]
CM:    	699/1700 = 41.11765
ROOT:  	1641/1700 = 96.52941
UAS:   	36912/40117 = 92.01087
LAS:   	36912/40117 = 92.01087

best UAS so far (a): 92.01087 [it = 27]

***** Iteration #28 *****	[Sun Jul 16 01:08:46 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 01:09:52 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 01:10:56 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 01:12:05 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 01:13:13 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 01:14:19 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 01:15:26 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 01:16:31 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 01:17:38 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 01:18:44 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 01:19:50 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=28]	[Sun Jul 16 01:19:50 2017]

instance num: 1700	[Sun Jul 16 01:22:17 2017]

 done 	[Sun Jul 16 01:22:17 2017]
CM:    	705/1700 = 41.47059
ROOT:  	1639/1700 = 96.41176
UAS:   	36907/40117 = 91.99840
LAS:   	36907/40117 = 91.99840

best UAS so far (a): 92.01087 [it = 27]

***** Iteration #29 *****	[Sun Jul 16 01:22:17 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 01:23:24 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 01:24:29 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 01:25:33 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 01:26:42 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 01:27:49 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 01:28:54 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 01:30:00 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 01:31:05 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 01:32:12 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 01:33:17 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=29]	[Sun Jul 16 01:33:17 2017]

instance num: 1700	[Sun Jul 16 01:36:00 2017]

 done 	[Sun Jul 16 01:36:00 2017]
CM:    	720/1700 = 42.35294
ROOT:  	1647/1700 = 96.88235
UAS:   	36955/40117 = 92.11805
LAS:   	36955/40117 = 92.11805

best UAS so far (a): 92.11805 [it = 29]

***** Iteration #30 *****	[Sun Jul 16 01:36:14 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 01:37:26 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 01:38:32 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 01:39:39 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 01:40:44 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 01:41:48 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 01:42:53 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 01:44:00 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 01:45:04 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 01:46:09 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 01:47:15 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=30]	[Sun Jul 16 01:47:15 2017]

instance num: 1700	[Sun Jul 16 01:49:40 2017]

 done 	[Sun Jul 16 01:49:40 2017]
CM:    	727/1700 = 42.76471
ROOT:  	1643/1700 = 96.64706
UAS:   	36973/40117 = 92.16292
LAS:   	36973/40117 = 92.16292

best UAS so far (a): 92.16292 [it = 30]

***** Iteration #31 *****	[Sun Jul 16 01:49:53 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 01:51:04 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 01:52:10 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 01:53:16 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 01:54:22 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 01:55:30 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 01:56:37 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 01:57:43 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 01:58:48 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 01:59:55 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 02:00:59 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=31]	[Sun Jul 16 02:00:59 2017]

instance num: 1700	[Sun Jul 16 02:03:24 2017]

 done 	[Sun Jul 16 02:03:24 2017]
CM:    	712/1700 = 41.88235
ROOT:  	1635/1700 = 96.17647
UAS:   	36933/40117 = 92.06322
LAS:   	36933/40117 = 92.06322

best UAS so far (a): 92.16292 [it = 30]

***** Iteration #32 *****	[Sun Jul 16 02:03:24 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 02:04:32 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 02:05:40 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 02:06:46 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 02:07:52 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 02:08:57 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 02:10:02 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 02:11:07 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 02:12:12 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 02:13:17 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 02:14:21 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=32]	[Sun Jul 16 02:14:21 2017]

instance num: 1700	[Sun Jul 16 02:16:47 2017]

 done 	[Sun Jul 16 02:16:47 2017]
CM:    	719/1700 = 42.29412
ROOT:  	1632/1700 = 96.00000
UAS:   	36936/40117 = 92.07069
LAS:   	36936/40117 = 92.07069

best UAS so far (a): 92.16292 [it = 30]

***** Iteration #33 *****	[Sun Jul 16 02:16:47 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 02:17:52 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 02:18:57 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 02:20:02 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 02:21:07 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 02:22:12 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 02:23:17 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 02:24:21 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 02:25:26 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 02:26:30 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 02:27:37 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=33]	[Sun Jul 16 02:27:37 2017]

instance num: 1700	[Sun Jul 16 02:30:03 2017]

 done 	[Sun Jul 16 02:30:03 2017]
CM:    	733/1700 = 43.11765
ROOT:  	1641/1700 = 96.52941
UAS:   	37007/40117 = 92.24768
LAS:   	37007/40117 = 92.24768

best UAS so far (a): 92.24768 [it = 33]

***** Iteration #34 *****	[Sun Jul 16 02:30:15 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 02:31:20 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 02:32:25 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 02:33:30 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 02:34:35 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 02:35:42 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 02:36:49 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 02:37:55 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 02:39:03 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 02:40:09 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 02:41:13 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=34]	[Sun Jul 16 02:41:13 2017]

instance num: 1700	[Sun Jul 16 02:43:38 2017]

 done 	[Sun Jul 16 02:43:38 2017]
CM:    	723/1700 = 42.52941
ROOT:  	1644/1700 = 96.70588
UAS:   	37004/40117 = 92.24020
LAS:   	37004/40117 = 92.24020

best UAS so far (a): 92.24768 [it = 33]

***** Iteration #35 *****	[Sun Jul 16 02:43:38 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 02:44:43 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 02:45:48 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 02:46:53 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 02:48:02 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 02:49:14 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 02:50:26 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 02:51:39 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 02:52:52 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 02:54:00 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 02:55:05 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=35]	[Sun Jul 16 02:55:05 2017]

instance num: 1700	[Sun Jul 16 02:57:30 2017]

 done 	[Sun Jul 16 02:57:30 2017]
CM:    	732/1700 = 43.05882
ROOT:  	1647/1700 = 96.88235
UAS:   	37002/40117 = 92.23521
LAS:   	37002/40117 = 92.23521

best UAS so far (a): 92.24768 [it = 33]

***** Iteration #36 *****	[Sun Jul 16 02:57:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 02:58:35 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 02:59:41 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 03:00:46 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 03:01:51 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 03:02:57 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 03:04:06 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 03:05:11 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 03:06:18 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 03:07:25 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 03:08:30 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=36]	[Sun Jul 16 03:08:30 2017]

instance num: 1700	[Sun Jul 16 03:11:09 2017]

 done 	[Sun Jul 16 03:11:09 2017]
CM:    	749/1700 = 44.05882
ROOT:  	1636/1700 = 96.23529
UAS:   	37129/40117 = 92.55179
LAS:   	37129/40117 = 92.55179

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #37 *****	[Sun Jul 16 03:11:23 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 03:12:29 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 03:13:34 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 03:14:40 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 03:15:46 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 03:16:51 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 03:17:56 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 03:19:02 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 03:20:08 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 03:21:13 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 03:22:19 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=37]	[Sun Jul 16 03:22:19 2017]

instance num: 1700	[Sun Jul 16 03:24:45 2017]

 done 	[Sun Jul 16 03:24:45 2017]
CM:    	738/1700 = 43.41176
ROOT:  	1641/1700 = 96.52941
UAS:   	37040/40117 = 92.32993
LAS:   	37040/40117 = 92.32993

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #38 *****	[Sun Jul 16 03:24:45 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 03:25:54 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 03:27:05 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 03:28:16 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 03:29:23 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 03:30:28 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 03:31:31 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 03:32:36 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 03:33:41 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 03:34:47 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 03:35:53 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=38]	[Sun Jul 16 03:35:53 2017]

instance num: 1700	[Sun Jul 16 03:38:19 2017]

 done 	[Sun Jul 16 03:38:19 2017]
CM:    	740/1700 = 43.52941
ROOT:  	1643/1700 = 96.64706
UAS:   	37055/40117 = 92.36733
LAS:   	37055/40117 = 92.36733

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #39 *****	[Sun Jul 16 03:38:19 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 03:39:26 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 03:40:32 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 03:41:38 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 03:42:42 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 03:43:48 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 03:44:54 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 03:45:58 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 03:47:04 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 03:48:09 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 03:49:13 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=39]	[Sun Jul 16 03:49:13 2017]

instance num: 1700	[Sun Jul 16 03:51:39 2017]

 done 	[Sun Jul 16 03:51:39 2017]
CM:    	752/1700 = 44.23529
ROOT:  	1641/1700 = 96.52941
UAS:   	37090/40117 = 92.45457
LAS:   	37090/40117 = 92.45457

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #40 *****	[Sun Jul 16 03:51:39 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 03:52:45 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 03:53:53 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 03:54:59 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 03:56:04 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 03:57:11 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 03:58:17 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 03:59:24 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 04:00:30 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 04:01:36 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 04:02:41 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=40]	[Sun Jul 16 04:02:41 2017]

instance num: 1700	[Sun Jul 16 04:05:10 2017]

 done 	[Sun Jul 16 04:05:10 2017]
CM:    	744/1700 = 43.76471
ROOT:  	1644/1700 = 96.70588
UAS:   	37097/40117 = 92.47202
LAS:   	37097/40117 = 92.47202

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #41 *****	[Sun Jul 16 04:05:10 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 04:06:15 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 04:07:20 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 04:08:24 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 04:09:29 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 04:10:35 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 04:11:41 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 04:12:47 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 04:13:53 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 04:15:01 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 04:16:08 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=41]	[Sun Jul 16 04:16:08 2017]

instance num: 1700	[Sun Jul 16 04:18:34 2017]

 done 	[Sun Jul 16 04:18:34 2017]
CM:    	745/1700 = 43.82353
ROOT:  	1642/1700 = 96.58824
UAS:   	37072/40117 = 92.40970
LAS:   	37072/40117 = 92.40970

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #42 *****	[Sun Jul 16 04:18:34 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 04:19:37 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 04:20:41 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 04:21:47 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 04:22:54 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 04:24:00 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 04:25:06 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 04:26:11 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 04:27:16 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 04:28:22 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 04:29:27 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=42]	[Sun Jul 16 04:29:27 2017]

instance num: 1700	[Sun Jul 16 04:31:55 2017]

 done 	[Sun Jul 16 04:31:55 2017]
CM:    	772/1700 = 45.41176
ROOT:  	1649/1700 = 97.00000
UAS:   	37073/40117 = 92.41219
LAS:   	37073/40117 = 92.41219

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #43 *****	[Sun Jul 16 04:31:55 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 04:33:03 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 04:34:09 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 04:35:14 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 04:36:18 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 04:37:24 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 04:38:30 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 04:39:36 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 04:40:44 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 04:41:52 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 04:42:58 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=43]	[Sun Jul 16 04:42:58 2017]

instance num: 1700	[Sun Jul 16 04:45:25 2017]

 done 	[Sun Jul 16 04:45:25 2017]
CM:    	756/1700 = 44.47059
ROOT:  	1643/1700 = 96.64706
UAS:   	37099/40117 = 92.47700
LAS:   	37099/40117 = 92.47700

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #44 *****	[Sun Jul 16 04:45:25 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 04:46:31 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 04:47:39 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 04:48:44 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 04:49:49 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 04:50:54 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 04:52:01 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 04:53:07 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 04:54:12 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 04:55:16 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 04:56:22 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=44]	[Sun Jul 16 04:56:22 2017]

instance num: 1700	[Sun Jul 16 04:58:49 2017]

 done 	[Sun Jul 16 04:58:49 2017]
CM:    	757/1700 = 44.52941
ROOT:  	1643/1700 = 96.64706
UAS:   	37071/40117 = 92.40721
LAS:   	37071/40117 = 92.40721

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #45 *****	[Sun Jul 16 04:58:49 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 04:59:56 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 05:01:01 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 05:02:07 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 05:03:13 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 05:04:18 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 05:05:24 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 05:06:29 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 05:07:35 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 05:08:42 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 05:09:48 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=45]	[Sun Jul 16 05:09:48 2017]

instance num: 1700	[Sun Jul 16 05:12:14 2017]

 done 	[Sun Jul 16 05:12:14 2017]
CM:    	755/1700 = 44.41176
ROOT:  	1647/1700 = 96.88235
UAS:   	37090/40117 = 92.45457
LAS:   	37090/40117 = 92.45457

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #46 *****	[Sun Jul 16 05:12:14 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 05:13:19 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 05:14:24 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 05:15:30 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 05:16:36 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 05:17:44 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 05:18:49 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 05:19:56 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 05:21:00 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 05:22:07 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 05:23:12 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=46]	[Sun Jul 16 05:23:12 2017]

instance num: 1700	[Sun Jul 16 05:25:38 2017]

 done 	[Sun Jul 16 05:25:38 2017]
CM:    	751/1700 = 44.17647
ROOT:  	1641/1700 = 96.52941
UAS:   	37023/40117 = 92.28756
LAS:   	37023/40117 = 92.28756

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #47 *****	[Sun Jul 16 05:25:38 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 05:26:44 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 05:27:51 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 05:28:58 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 05:30:04 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 05:31:12 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 05:32:19 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 05:33:26 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 05:34:33 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 05:35:38 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 05:36:44 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=47]	[Sun Jul 16 05:36:44 2017]

instance num: 1700	[Sun Jul 16 05:39:11 2017]

 done 	[Sun Jul 16 05:39:11 2017]
CM:    	758/1700 = 44.58824
ROOT:  	1645/1700 = 96.76471
UAS:   	37067/40117 = 92.39724
LAS:   	37067/40117 = 92.39724

best UAS so far (a): 92.55179 [it = 36]

***** Iteration #48 *****	[Sun Jul 16 05:39:11 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 05:40:15 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 05:41:21 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 05:42:27 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 05:43:33 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 05:44:40 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 05:45:47 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 05:46:52 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 05:47:59 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 05:49:07 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 05:50:12 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=48]	[Sun Jul 16 05:50:12 2017]

instance num: 1700	[Sun Jul 16 05:52:39 2017]

 done 	[Sun Jul 16 05:52:39 2017]
CM:    	778/1700 = 45.76471
ROOT:  	1647/1700 = 96.88235
UAS:   	37185/40117 = 92.69138
LAS:   	37185/40117 = 92.69138

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #49 *****	[Sun Jul 16 05:52:51 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 05:54:00 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 05:55:08 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 05:56:14 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 05:57:18 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 05:58:23 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 05:59:32 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 06:00:41 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 06:01:48 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 06:02:53 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 06:04:00 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=49]	[Sun Jul 16 06:04:00 2017]

instance num: 1700	[Sun Jul 16 06:06:25 2017]

 done 	[Sun Jul 16 06:06:25 2017]
CM:    	779/1700 = 45.82353
ROOT:  	1642/1700 = 96.58824
UAS:   	37170/40117 = 92.65399
LAS:   	37170/40117 = 92.65399

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #50 *****	[Sun Jul 16 06:06:25 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 06:07:30 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 06:08:37 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 06:09:44 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 06:10:52 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 06:12:00 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 06:13:04 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 06:14:11 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 06:15:16 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 06:16:21 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 06:17:27 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=50]	[Sun Jul 16 06:17:27 2017]

instance num: 1700	[Sun Jul 16 06:19:58 2017]

 done 	[Sun Jul 16 06:19:58 2017]
CM:    	766/1700 = 45.05882
ROOT:  	1647/1700 = 96.88235
UAS:   	37155/40117 = 92.61660
LAS:   	37155/40117 = 92.61660

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #51 *****	[Sun Jul 16 06:19:58 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 06:21:08 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 06:22:13 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 06:23:18 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 06:24:23 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 06:25:31 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 06:26:35 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 06:27:41 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 06:28:45 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 06:29:50 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 06:30:56 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=51]	[Sun Jul 16 06:30:56 2017]

instance num: 1700	[Sun Jul 16 06:33:22 2017]

 done 	[Sun Jul 16 06:33:22 2017]
CM:    	771/1700 = 45.35294
ROOT:  	1645/1700 = 96.76471
UAS:   	37172/40117 = 92.65897
LAS:   	37172/40117 = 92.65897

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #52 *****	[Sun Jul 16 06:33:22 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 06:34:28 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 06:35:36 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 06:36:43 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 06:37:48 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 06:38:53 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 06:39:59 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 06:41:04 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 06:42:10 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 06:43:16 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 06:44:22 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=52]	[Sun Jul 16 06:44:22 2017]

instance num: 1700	[Sun Jul 16 06:46:49 2017]

 done 	[Sun Jul 16 06:46:49 2017]
CM:    	774/1700 = 45.52941
ROOT:  	1646/1700 = 96.82353
UAS:   	37159/40117 = 92.62657
LAS:   	37159/40117 = 92.62657

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #53 *****	[Sun Jul 16 06:46:49 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 06:47:53 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 06:49:00 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 06:50:04 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 06:51:10 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 06:52:16 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 06:53:21 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 06:54:25 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 06:55:31 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 06:56:38 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 06:57:42 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=53]	[Sun Jul 16 06:57:42 2017]

instance num: 1700	[Sun Jul 16 07:00:09 2017]

 done 	[Sun Jul 16 07:00:09 2017]
CM:    	763/1700 = 44.88235
ROOT:  	1646/1700 = 96.82353
UAS:   	37098/40117 = 92.47451
LAS:   	37098/40117 = 92.47451

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #54 *****	[Sun Jul 16 07:00:09 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 07:01:14 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 07:02:20 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 07:03:26 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 07:04:34 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 07:05:40 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 07:06:46 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 07:07:58 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 07:09:11 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 07:10:24 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 07:11:36 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=54]	[Sun Jul 16 07:11:36 2017]

instance num: 1700	[Sun Jul 16 07:14:10 2017]

 done 	[Sun Jul 16 07:14:10 2017]
CM:    	757/1700 = 44.52941
ROOT:  	1640/1700 = 96.47059
UAS:   	37151/40117 = 92.60663
LAS:   	37151/40117 = 92.60663

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #55 *****	[Sun Jul 16 07:14:10 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 07:15:15 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 07:16:21 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 07:17:27 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 07:18:32 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 07:19:38 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 07:20:44 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 07:21:51 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 07:22:56 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 07:24:02 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 07:25:09 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=55]	[Sun Jul 16 07:25:09 2017]

instance num: 1700	[Sun Jul 16 07:27:35 2017]

 done 	[Sun Jul 16 07:27:35 2017]
CM:    	754/1700 = 44.35294
ROOT:  	1649/1700 = 97.00000
UAS:   	37160/40117 = 92.62906
LAS:   	37160/40117 = 92.62906

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #56 *****	[Sun Jul 16 07:27:35 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 07:28:39 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 07:29:49 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 07:30:54 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 07:32:00 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 07:33:06 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 07:34:12 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 07:35:18 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 07:36:23 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 07:37:30 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 07:38:36 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=56]	[Sun Jul 16 07:38:36 2017]

instance num: 1700	[Sun Jul 16 07:41:02 2017]

 done 	[Sun Jul 16 07:41:02 2017]
CM:    	760/1700 = 44.70588
ROOT:  	1649/1700 = 97.00000
UAS:   	37157/40117 = 92.62158
LAS:   	37157/40117 = 92.62158

best UAS so far (a): 92.69138 [it = 48]

***** Iteration #57 *****	[Sun Jul 16 07:41:02 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 07:42:06 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 07:43:12 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 07:44:20 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 07:45:27 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 07:46:32 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 07:47:37 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 07:48:40 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 07:49:45 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 07:50:50 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 07:51:57 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=57]	[Sun Jul 16 07:51:57 2017]

instance num: 1700	[Sun Jul 16 07:54:29 2017]

 done 	[Sun Jul 16 07:54:29 2017]
CM:    	770/1700 = 45.29412
ROOT:  	1648/1700 = 96.94118
UAS:   	37202/40117 = 92.73375
LAS:   	37202/40117 = 92.73375

best UAS so far (a): 92.73375 [it = 57]

***** Iteration #58 *****	[Sun Jul 16 07:54:42 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 07:55:50 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 07:56:54 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 07:58:01 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 07:59:06 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 08:00:11 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 08:01:15 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 08:02:22 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 08:03:29 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 08:04:33 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 08:05:40 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=58]	[Sun Jul 16 08:05:40 2017]

instance num: 1700	[Sun Jul 16 08:08:06 2017]

 done 	[Sun Jul 16 08:08:06 2017]
CM:    	774/1700 = 45.52941
ROOT:  	1647/1700 = 96.88235
UAS:   	37154/40117 = 92.61410
LAS:   	37154/40117 = 92.61410

best UAS so far (a): 92.73375 [it = 57]

***** Iteration #59 *****	[Sun Jul 16 08:08:06 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 08:09:13 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 08:10:18 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 08:11:21 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 08:12:27 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 08:13:33 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 08:14:38 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 08:15:46 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 08:16:51 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 08:17:58 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 08:19:04 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=59]	[Sun Jul 16 08:19:04 2017]

instance num: 1700	[Sun Jul 16 08:21:30 2017]

 done 	[Sun Jul 16 08:21:30 2017]
CM:    	763/1700 = 44.88235
ROOT:  	1645/1700 = 96.76471
UAS:   	37174/40117 = 92.66396
LAS:   	37174/40117 = 92.66396

best UAS so far (a): 92.73375 [it = 57]

***** Iteration #60 *****	[Sun Jul 16 08:21:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 08:22:35 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 08:23:42 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 08:24:50 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 08:25:56 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 08:27:03 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 08:28:07 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 08:29:14 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 08:30:17 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 08:31:22 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 08:32:28 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=60]	[Sun Jul 16 08:32:28 2017]

instance num: 1700	[Sun Jul 16 08:35:00 2017]

 done 	[Sun Jul 16 08:35:00 2017]
CM:    	773/1700 = 45.47059
ROOT:  	1648/1700 = 96.94118
UAS:   	37140/40117 = 92.57921
LAS:   	37140/40117 = 92.57921

best UAS so far (a): 92.73375 [it = 57]

***** Iteration #61 *****	[Sun Jul 16 08:35:00 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 08:36:08 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 08:37:16 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 08:38:21 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 08:39:29 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 08:40:34 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 08:41:39 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 08:42:46 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 08:43:49 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 08:44:55 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 08:46:04 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=61]	[Sun Jul 16 08:46:04 2017]

instance num: 1700	[Sun Jul 16 08:48:33 2017]

 done 	[Sun Jul 16 08:48:33 2017]
CM:    	779/1700 = 45.82353
ROOT:  	1645/1700 = 96.76471
UAS:   	37217/40117 = 92.77114
LAS:   	37217/40117 = 92.77114

best UAS so far (a): 92.77114 [it = 61]

***** Iteration #62 *****	[Sun Jul 16 08:48:46 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 08:49:56 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 08:51:08 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 08:52:24 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 08:53:33 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 08:54:38 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 08:55:44 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 08:56:49 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 08:57:52 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 08:58:58 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 09:00:03 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=62]	[Sun Jul 16 09:00:03 2017]

instance num: 1700	[Sun Jul 16 09:02:28 2017]

 done 	[Sun Jul 16 09:02:28 2017]
CM:    	755/1700 = 44.41176
ROOT:  	1642/1700 = 96.58824
UAS:   	37155/40117 = 92.61660
LAS:   	37155/40117 = 92.61660

best UAS so far (a): 92.77114 [it = 61]

***** Iteration #63 *****	[Sun Jul 16 09:02:28 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 09:03:33 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 09:04:39 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 09:05:45 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 09:06:54 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 09:08:00 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 09:09:04 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 09:10:08 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 09:11:15 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 09:12:22 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 09:13:29 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=63]	[Sun Jul 16 09:13:29 2017]

instance num: 1700	[Sun Jul 16 09:15:54 2017]

 done 	[Sun Jul 16 09:15:54 2017]
CM:    	763/1700 = 44.88235
ROOT:  	1647/1700 = 96.88235
UAS:   	37201/40117 = 92.73126
LAS:   	37201/40117 = 92.73126

best UAS so far (a): 92.77114 [it = 61]

***** Iteration #64 *****	[Sun Jul 16 09:15:54 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 09:17:00 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 09:18:05 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 09:19:18 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 09:20:27 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 09:21:32 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 09:22:38 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 09:23:44 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 09:24:52 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 09:26:03 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 09:27:12 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=64]	[Sun Jul 16 09:27:12 2017]

instance num: 1700	[Sun Jul 16 09:29:40 2017]

 done 	[Sun Jul 16 09:29:40 2017]
CM:    	777/1700 = 45.70588
ROOT:  	1646/1700 = 96.82353
UAS:   	37168/40117 = 92.64900
LAS:   	37168/40117 = 92.64900

best UAS so far (a): 92.77114 [it = 61]

***** Iteration #65 *****	[Sun Jul 16 09:29:40 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 09:30:46 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 09:31:53 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 09:33:05 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 09:34:17 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 09:35:26 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 09:36:31 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 09:37:36 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 09:38:40 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 09:39:46 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 09:40:52 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=65]	[Sun Jul 16 09:40:52 2017]

instance num: 1700	[Sun Jul 16 09:43:18 2017]

 done 	[Sun Jul 16 09:43:18 2017]
CM:    	758/1700 = 44.58824
ROOT:  	1647/1700 = 96.88235
UAS:   	37156/40117 = 92.61909
LAS:   	37156/40117 = 92.61909

best UAS so far (a): 92.77114 [it = 61]

***** Iteration #66 *****	[Sun Jul 16 09:43:18 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 09:44:29 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 09:45:34 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 09:46:40 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 09:47:43 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 09:48:49 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 09:49:56 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 09:51:05 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 09:52:15 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 09:53:20 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 09:54:29 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=66]	[Sun Jul 16 09:54:29 2017]

instance num: 1700	[Sun Jul 16 09:56:57 2017]

 done 	[Sun Jul 16 09:56:57 2017]
CM:    	770/1700 = 45.29412
ROOT:  	1644/1700 = 96.70588
UAS:   	37180/40117 = 92.67891
LAS:   	37180/40117 = 92.67891

best UAS so far (a): 92.77114 [it = 61]

***** Iteration #67 *****	[Sun Jul 16 09:56:57 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 09:58:04 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 09:59:09 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 10:00:15 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 10:01:22 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 10:02:28 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 10:03:34 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 10:04:42 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 10:05:47 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 10:06:52 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 10:07:57 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=67]	[Sun Jul 16 10:07:57 2017]

instance num: 1700	[Sun Jul 16 10:10:25 2017]

 done 	[Sun Jul 16 10:10:25 2017]
CM:    	768/1700 = 45.17647
ROOT:  	1642/1700 = 96.58824
UAS:   	37184/40117 = 92.68889
LAS:   	37184/40117 = 92.68889

best UAS so far (a): 92.77114 [it = 61]

***** Iteration #68 *****	[Sun Jul 16 10:10:25 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 10:11:37 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 10:12:50 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 10:14:04 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 10:15:20 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 10:16:26 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 10:17:33 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 10:18:40 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 10:19:44 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 10:20:49 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 10:21:55 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=68]	[Sun Jul 16 10:21:55 2017]

instance num: 1700	[Sun Jul 16 10:24:22 2017]

 done 	[Sun Jul 16 10:24:22 2017]
CM:    	778/1700 = 45.76471
ROOT:  	1644/1700 = 96.70588
UAS:   	37223/40117 = 92.78610
LAS:   	37223/40117 = 92.78610

best UAS so far (a): 92.78610 [it = 68]

***** Iteration #69 *****	[Sun Jul 16 10:24:35 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 10:25:40 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 10:26:46 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 10:27:51 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 10:28:57 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 10:30:05 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 10:31:11 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 10:32:17 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 10:33:21 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 10:34:27 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 10:35:33 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=69]	[Sun Jul 16 10:35:33 2017]

instance num: 1700	[Sun Jul 16 10:37:59 2017]

 done 	[Sun Jul 16 10:37:59 2017]
CM:    	777/1700 = 45.70588
ROOT:  	1642/1700 = 96.58824
UAS:   	37177/40117 = 92.67144
LAS:   	37177/40117 = 92.67144

best UAS so far (a): 92.78610 [it = 68]

***** Iteration #70 *****	[Sun Jul 16 10:37:59 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 10:39:04 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 10:40:09 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 10:41:15 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 10:42:22 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 10:43:29 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 10:44:36 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 10:45:40 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 10:46:48 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 10:47:52 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 10:48:57 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=70]	[Sun Jul 16 10:48:57 2017]

instance num: 1700	[Sun Jul 16 10:51:25 2017]

 done 	[Sun Jul 16 10:51:25 2017]
CM:    	787/1700 = 46.29412
ROOT:  	1645/1700 = 96.76471
UAS:   	37221/40117 = 92.78112
LAS:   	37221/40117 = 92.78112

best UAS so far (a): 92.78610 [it = 68]

***** Iteration #71 *****	[Sun Jul 16 10:51:25 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 10:52:31 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 10:53:42 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 10:54:54 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 10:56:00 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 10:57:06 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 10:58:11 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 10:59:15 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 11:00:21 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 11:01:27 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 11:02:32 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=71]	[Sun Jul 16 11:02:32 2017]

instance num: 1700	[Sun Jul 16 11:04:58 2017]

 done 	[Sun Jul 16 11:04:58 2017]
CM:    	785/1700 = 46.17647
ROOT:  	1645/1700 = 96.76471
UAS:   	37264/40117 = 92.88830
LAS:   	37264/40117 = 92.88830

best UAS so far (a): 92.88830 [it = 71]

***** Iteration #72 *****	[Sun Jul 16 11:05:11 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 11:06:17 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 11:07:24 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 11:08:31 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 11:09:36 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 11:10:44 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 11:11:48 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 11:12:53 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 11:13:59 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 11:15:04 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 11:16:10 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=72]	[Sun Jul 16 11:16:10 2017]

instance num: 1700	[Sun Jul 16 11:18:36 2017]

 done 	[Sun Jul 16 11:18:36 2017]
CM:    	797/1700 = 46.88235
ROOT:  	1647/1700 = 96.88235
UAS:   	37290/40117 = 92.95311
LAS:   	37290/40117 = 92.95311

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #73 *****	[Sun Jul 16 11:18:49 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 11:19:55 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 11:21:01 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 11:22:07 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 11:23:11 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 11:24:19 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 11:25:25 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 11:26:29 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 11:27:35 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 11:28:42 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 11:29:47 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=73]	[Sun Jul 16 11:29:47 2017]

instance num: 1700	[Sun Jul 16 11:32:14 2017]

 done 	[Sun Jul 16 11:32:14 2017]
CM:    	774/1700 = 45.52941
ROOT:  	1646/1700 = 96.82353
UAS:   	37189/40117 = 92.70135
LAS:   	37189/40117 = 92.70135

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #74 *****	[Sun Jul 16 11:32:14 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 11:33:23 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 11:34:34 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 11:35:42 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 11:36:48 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 11:37:54 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 11:38:58 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 11:40:01 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 11:41:08 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 11:42:14 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 11:43:21 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=74]	[Sun Jul 16 11:43:21 2017]

instance num: 1700	[Sun Jul 16 11:45:47 2017]

 done 	[Sun Jul 16 11:45:47 2017]
CM:    	774/1700 = 45.52941
ROOT:  	1643/1700 = 96.64706
UAS:   	37209/40117 = 92.75120
LAS:   	37209/40117 = 92.75120

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #75 *****	[Sun Jul 16 11:45:47 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 11:46:56 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 11:48:01 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 11:49:08 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 11:50:13 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 11:51:19 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 11:52:24 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 11:53:29 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 11:54:34 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 11:55:41 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 11:56:45 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=75]	[Sun Jul 16 11:56:45 2017]

instance num: 1700	[Sun Jul 16 11:59:12 2017]

 done 	[Sun Jul 16 11:59:12 2017]
CM:    	794/1700 = 46.70588
ROOT:  	1646/1700 = 96.82353
UAS:   	37266/40117 = 92.89329
LAS:   	37266/40117 = 92.89329

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #76 *****	[Sun Jul 16 11:59:12 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 12:00:18 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 12:01:25 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 12:02:31 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 12:03:36 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 12:04:42 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 12:05:46 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 12:06:52 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 12:07:59 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 12:09:05 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 12:10:11 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=76]	[Sun Jul 16 12:10:11 2017]

instance num: 1700	[Sun Jul 16 12:12:38 2017]

 done 	[Sun Jul 16 12:12:38 2017]
CM:    	774/1700 = 45.52941
ROOT:  	1645/1700 = 96.76471
UAS:   	37214/40117 = 92.76367
LAS:   	37214/40117 = 92.76367

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #77 *****	[Sun Jul 16 12:12:38 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 12:13:44 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 12:14:48 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 12:15:53 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 12:16:58 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 12:18:02 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 12:19:10 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 12:20:18 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 12:21:26 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 12:22:31 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 12:23:37 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=77]	[Sun Jul 16 12:23:37 2017]

instance num: 1700	[Sun Jul 16 12:26:04 2017]

 done 	[Sun Jul 16 12:26:04 2017]
CM:    	782/1700 = 46.00000
ROOT:  	1646/1700 = 96.82353
UAS:   	37248/40117 = 92.84842
LAS:   	37248/40117 = 92.84842

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #78 *****	[Sun Jul 16 12:26:04 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 12:27:10 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 12:28:15 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 12:29:20 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 12:30:24 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 12:31:30 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 12:32:35 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 12:33:40 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 12:34:44 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 12:35:54 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 12:37:03 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=78]	[Sun Jul 16 12:37:03 2017]

instance num: 1700	[Sun Jul 16 12:39:30 2017]

 done 	[Sun Jul 16 12:39:30 2017]
CM:    	777/1700 = 45.70588
ROOT:  	1647/1700 = 96.88235
UAS:   	37205/40117 = 92.74123
LAS:   	37205/40117 = 92.74123

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #79 *****	[Sun Jul 16 12:39:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 12:40:37 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 12:41:42 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 12:42:48 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 12:43:55 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 12:45:01 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 12:46:07 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 12:47:13 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 12:48:21 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 12:49:28 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 12:50:35 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=79]	[Sun Jul 16 12:50:35 2017]

instance num: 1700	[Sun Jul 16 12:53:01 2017]

 done 	[Sun Jul 16 12:53:01 2017]
CM:    	767/1700 = 45.11765
ROOT:  	1643/1700 = 96.64706
UAS:   	37209/40117 = 92.75120
LAS:   	37209/40117 = 92.75120

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #80 *****	[Sun Jul 16 12:53:01 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 12:54:06 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 12:55:12 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 12:56:17 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 12:57:24 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 12:58:30 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 12:59:39 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 13:00:45 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 13:01:50 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 13:02:55 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 13:04:02 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=80]	[Sun Jul 16 13:04:02 2017]

instance num: 1700	[Sun Jul 16 13:06:28 2017]

 done 	[Sun Jul 16 13:06:28 2017]
CM:    	779/1700 = 45.82353
ROOT:  	1652/1700 = 97.17647
UAS:   	37193/40117 = 92.71132
LAS:   	37193/40117 = 92.71132

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #81 *****	[Sun Jul 16 13:06:28 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 13:07:34 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 13:08:44 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 13:09:52 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 13:10:59 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 13:12:07 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 13:13:13 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 13:14:16 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 13:15:21 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 13:16:27 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 13:17:33 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=81]	[Sun Jul 16 13:17:33 2017]

instance num: 1700	[Sun Jul 16 13:20:00 2017]

 done 	[Sun Jul 16 13:20:00 2017]
CM:    	773/1700 = 45.47059
ROOT:  	1643/1700 = 96.64706
UAS:   	37193/40117 = 92.71132
LAS:   	37193/40117 = 92.71132

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #82 *****	[Sun Jul 16 13:20:00 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 13:21:07 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 13:22:14 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 13:23:21 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 13:24:28 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 13:25:36 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 13:26:41 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 13:27:48 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 13:28:53 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 13:29:59 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 13:31:03 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=82]	[Sun Jul 16 13:31:03 2017]

instance num: 1700	[Sun Jul 16 13:33:30 2017]

 done 	[Sun Jul 16 13:33:30 2017]
CM:    	766/1700 = 45.05882
ROOT:  	1646/1700 = 96.82353
UAS:   	37225/40117 = 92.79109
LAS:   	37225/40117 = 92.79109

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #83 *****	[Sun Jul 16 13:33:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 13:34:34 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 13:35:38 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 13:36:48 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 13:38:01 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 13:39:13 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 13:40:21 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 13:41:26 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 13:42:34 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 13:43:39 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 13:44:45 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=83]	[Sun Jul 16 13:44:45 2017]

instance num: 1700	[Sun Jul 16 13:47:12 2017]

 done 	[Sun Jul 16 13:47:12 2017]
CM:    	780/1700 = 45.88235
ROOT:  	1647/1700 = 96.88235
UAS:   	37213/40117 = 92.76117
LAS:   	37213/40117 = 92.76117

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #84 *****	[Sun Jul 16 13:47:12 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 13:48:18 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 13:49:23 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 13:50:28 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 13:51:32 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 13:52:39 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 13:53:44 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 13:54:52 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 13:55:57 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 13:57:04 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 13:58:09 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=84]	[Sun Jul 16 13:58:09 2017]

instance num: 1700	[Sun Jul 16 14:00:34 2017]

 done 	[Sun Jul 16 14:00:34 2017]
CM:    	779/1700 = 45.82353
ROOT:  	1648/1700 = 96.94118
UAS:   	37220/40117 = 92.77862
LAS:   	37220/40117 = 92.77862

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #85 *****	[Sun Jul 16 14:00:34 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 14:01:38 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 14:02:44 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 14:03:51 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 14:04:57 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 14:06:04 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 14:07:15 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 14:08:21 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 14:09:29 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 14:10:33 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 14:11:43 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=85]	[Sun Jul 16 14:11:43 2017]

instance num: 1700	[Sun Jul 16 14:14:09 2017]

 done 	[Sun Jul 16 14:14:09 2017]
CM:    	783/1700 = 46.05882
ROOT:  	1641/1700 = 96.52941
UAS:   	37210/40117 = 92.75370
LAS:   	37210/40117 = 92.75370

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #86 *****	[Sun Jul 16 14:14:09 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 14:15:15 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 14:16:19 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 14:17:25 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 14:18:30 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 14:19:35 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 14:20:43 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 14:21:48 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 14:22:55 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 14:24:01 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 14:25:06 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=86]	[Sun Jul 16 14:25:06 2017]

instance num: 1700	[Sun Jul 16 14:27:32 2017]

 done 	[Sun Jul 16 14:27:32 2017]
CM:    	800/1700 = 47.05882
ROOT:  	1645/1700 = 96.76471
UAS:   	37206/40117 = 92.74372
LAS:   	37206/40117 = 92.74372

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #87 *****	[Sun Jul 16 14:27:32 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 14:28:36 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 14:29:41 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 14:30:44 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 14:31:49 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 14:32:54 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 14:34:06 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 14:35:16 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 14:36:22 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 14:37:29 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 14:38:33 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=87]	[Sun Jul 16 14:38:33 2017]

instance num: 1700	[Sun Jul 16 14:41:01 2017]

 done 	[Sun Jul 16 14:41:01 2017]
CM:    	797/1700 = 46.88235
ROOT:  	1648/1700 = 96.94118
UAS:   	37249/40117 = 92.85091
LAS:   	37249/40117 = 92.85091

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #88 *****	[Sun Jul 16 14:41:01 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 14:42:08 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 14:43:17 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 14:44:22 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 14:45:29 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 14:46:33 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 14:47:37 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 14:48:43 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 14:49:49 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 14:50:56 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 14:52:01 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=88]	[Sun Jul 16 14:52:01 2017]

instance num: 1700	[Sun Jul 16 14:54:30 2017]

 done 	[Sun Jul 16 14:54:30 2017]
CM:    	780/1700 = 45.88235
ROOT:  	1648/1700 = 96.94118
UAS:   	37254/40117 = 92.86337
LAS:   	37254/40117 = 92.86337

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #89 *****	[Sun Jul 16 14:54:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 14:55:37 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 14:56:43 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 14:57:49 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 14:58:56 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 15:00:01 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 15:01:08 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 15:02:13 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 15:03:19 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 15:04:25 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 15:05:30 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=89]	[Sun Jul 16 15:05:30 2017]

instance num: 1700	[Sun Jul 16 15:07:58 2017]

 done 	[Sun Jul 16 15:07:58 2017]
CM:    	787/1700 = 46.29412
ROOT:  	1645/1700 = 96.76471
UAS:   	37273/40117 = 92.91074
LAS:   	37273/40117 = 92.91074

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #90 *****	[Sun Jul 16 15:07:58 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 15:09:03 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 15:10:09 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 15:11:14 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 15:12:21 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 15:13:27 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 15:14:32 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 15:15:39 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 15:16:47 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 15:17:57 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 15:19:10 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=90]	[Sun Jul 16 15:19:10 2017]

instance num: 1700	[Sun Jul 16 15:22:00 2017]

 done 	[Sun Jul 16 15:22:00 2017]
CM:    	800/1700 = 47.05882
ROOT:  	1649/1700 = 97.00000
UAS:   	37264/40117 = 92.88830
LAS:   	37264/40117 = 92.88830

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #91 *****	[Sun Jul 16 15:22:00 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 15:23:06 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 15:24:11 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 15:25:18 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 15:26:26 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 15:27:31 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 15:28:39 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 15:29:44 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 15:30:50 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 15:31:57 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 15:33:05 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=91]	[Sun Jul 16 15:33:05 2017]

instance num: 1700	[Sun Jul 16 15:35:30 2017]

 done 	[Sun Jul 16 15:35:30 2017]
CM:    	809/1700 = 47.58824
ROOT:  	1646/1700 = 96.82353
UAS:   	37258/40117 = 92.87335
LAS:   	37258/40117 = 92.87335

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #92 *****	[Sun Jul 16 15:35:30 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 15:36:36 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 15:37:41 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 15:38:48 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 15:39:53 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 15:40:59 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 15:42:04 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 15:43:10 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 15:44:15 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 15:45:21 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 15:46:27 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=92]	[Sun Jul 16 15:46:27 2017]

instance num: 1700	[Sun Jul 16 15:48:52 2017]

 done 	[Sun Jul 16 15:48:52 2017]
CM:    	779/1700 = 45.82353
ROOT:  	1650/1700 = 97.05882
UAS:   	37222/40117 = 92.78361
LAS:   	37222/40117 = 92.78361

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #93 *****	[Sun Jul 16 15:48:52 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 15:49:58 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 15:51:01 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 15:52:08 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 15:53:14 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 15:54:20 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 15:55:25 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 15:56:32 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 15:57:40 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 15:58:46 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 15:59:52 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=93]	[Sun Jul 16 15:59:52 2017]

instance num: 1700	[Sun Jul 16 16:02:21 2017]

 done 	[Sun Jul 16 16:02:21 2017]
CM:    	790/1700 = 46.47059
ROOT:  	1645/1700 = 96.76471
UAS:   	37229/40117 = 92.80106
LAS:   	37229/40117 = 92.80106

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #94 *****	[Sun Jul 16 16:02:21 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 16:03:26 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 16:04:32 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 16:05:36 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 16:06:43 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 16:07:49 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 16:08:54 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 16:10:02 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 16:11:08 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 16:12:12 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 16:13:20 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=94]	[Sun Jul 16 16:13:20 2017]

instance num: 1700	[Sun Jul 16 16:15:45 2017]

 done 	[Sun Jul 16 16:15:45 2017]
CM:    	785/1700 = 46.17647
ROOT:  	1642/1700 = 96.58824
UAS:   	37212/40117 = 92.75868
LAS:   	37212/40117 = 92.75868

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #95 *****	[Sun Jul 16 16:15:45 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 16:16:52 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 16:17:58 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 16:19:03 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 16:20:09 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 16:21:14 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 16:22:20 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 16:23:25 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 16:24:30 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 16:25:36 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 16:26:44 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=95]	[Sun Jul 16 16:26:44 2017]

instance num: 1700	[Sun Jul 16 16:29:10 2017]

 done 	[Sun Jul 16 16:29:10 2017]
CM:    	800/1700 = 47.05882
ROOT:  	1644/1700 = 96.70588
UAS:   	37263/40117 = 92.88581
LAS:   	37263/40117 = 92.88581

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #96 *****	[Sun Jul 16 16:29:10 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 16:30:14 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 16:31:28 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 16:32:43 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 16:33:51 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 16:34:57 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 16:36:03 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 16:37:08 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 16:38:13 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 16:39:19 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 16:40:24 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=96]	[Sun Jul 16 16:40:24 2017]

instance num: 1700	[Sun Jul 16 16:42:51 2017]

 done 	[Sun Jul 16 16:42:51 2017]
CM:    	808/1700 = 47.52941
ROOT:  	1644/1700 = 96.70588
UAS:   	37261/40117 = 92.88082
LAS:   	37261/40117 = 92.88082

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #97 *****	[Sun Jul 16 16:42:51 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 16:43:59 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 16:45:04 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 16:46:11 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 16:47:22 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 16:48:27 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 16:49:31 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 16:50:36 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 16:51:40 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 16:52:45 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 16:53:49 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=97]	[Sun Jul 16 16:53:49 2017]

instance num: 1700	[Sun Jul 16 16:56:16 2017]

 done 	[Sun Jul 16 16:56:16 2017]
CM:    	817/1700 = 48.05882
ROOT:  	1645/1700 = 96.76471
UAS:   	37277/40117 = 92.92071
LAS:   	37277/40117 = 92.92071

best UAS so far (a): 92.95311 [it = 72]

***** Iteration #98 *****	[Sun Jul 16 16:56:16 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 16:57:24 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 16:58:30 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 16:59:38 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 17:00:44 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 17:01:51 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 17:03:02 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 17:04:05 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 17:05:10 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 17:06:14 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 17:07:20 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=98]	[Sun Jul 16 17:07:20 2017]

instance num: 1700	[Sun Jul 16 17:09:46 2017]

 done 	[Sun Jul 16 17:09:46 2017]
CM:    	817/1700 = 48.05882
ROOT:  	1643/1700 = 96.64706
UAS:   	37309/40117 = 93.00047
LAS:   	37309/40117 = 93.00047

best UAS so far (a): 93.00047 [it = 98]

***** Iteration #99 *****	[Sun Jul 16 17:09:59 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 17:11:04 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 17:12:10 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 17:13:15 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 17:14:21 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 17:15:28 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 17:16:35 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 17:17:48 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 17:18:57 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 17:20:03 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 17:21:12 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=99]	[Sun Jul 16 17:21:12 2017]

instance num: 1700	[Sun Jul 16 17:23:39 2017]

 done 	[Sun Jul 16 17:23:39 2017]
CM:    	815/1700 = 47.94118
ROOT:  	1651/1700 = 97.11765
UAS:   	37348/40117 = 93.09769
LAS:   	37348/40117 = 93.09769

best UAS so far (a): 93.09769 [it = 99]

***** Iteration #100 *****	[Sun Jul 16 17:23:51 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 17:24:58 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 17:26:04 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 17:27:10 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 17:28:16 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 17:29:23 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 17:30:27 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 17:31:33 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 17:32:38 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 17:33:47 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 17:34:53 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=100]	[Sun Jul 16 17:34:53 2017]

instance num: 1700	[Sun Jul 16 17:37:20 2017]

 done 	[Sun Jul 16 17:37:20 2017]
CM:    	799/1700 = 47.00000
ROOT:  	1652/1700 = 97.17647
UAS:   	37328/40117 = 93.04784
LAS:   	37328/40117 = 93.04784

best UAS so far (a): 93.09769 [it = 99]

***** Iteration #101 *****	[Sun Jul 16 17:37:20 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 17:38:25 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 17:39:31 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 17:40:39 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 17:41:44 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 17:42:52 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 17:43:58 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 17:45:03 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 17:46:09 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 17:47:15 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 17:48:21 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=101]	[Sun Jul 16 17:48:21 2017]

instance num: 1700	[Sun Jul 16 17:50:48 2017]

 done 	[Sun Jul 16 17:50:48 2017]
CM:    	801/1700 = 47.11765
ROOT:  	1651/1700 = 97.11765
UAS:   	37327/40117 = 93.04534
LAS:   	37327/40117 = 93.04534

best UAS so far (a): 93.09769 [it = 99]

***** Iteration #102 *****	[Sun Jul 16 17:50:48 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 17:51:54 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 17:52:59 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 17:54:05 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 17:55:11 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 17:56:16 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 17:57:22 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 17:58:26 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 17:59:32 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 18:00:37 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 18:01:43 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=102]	[Sun Jul 16 18:01:43 2017]

instance num: 1700	[Sun Jul 16 18:04:09 2017]

 done 	[Sun Jul 16 18:04:09 2017]
CM:    	820/1700 = 48.23529
ROOT:  	1650/1700 = 97.05882
UAS:   	37362/40117 = 93.13259
LAS:   	37362/40117 = 93.13259

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #103 *****	[Sun Jul 16 18:04:22 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 18:05:28 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 18:06:34 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 18:07:46 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 18:08:59 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 18:10:11 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 18:11:18 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 18:12:23 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 18:13:30 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 18:14:37 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 18:15:43 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=103]	[Sun Jul 16 18:15:43 2017]

instance num: 1700	[Sun Jul 16 18:18:10 2017]

 done 	[Sun Jul 16 18:18:10 2017]
CM:    	805/1700 = 47.35294
ROOT:  	1651/1700 = 97.11765
UAS:   	37331/40117 = 93.05531
LAS:   	37331/40117 = 93.05531

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #104 *****	[Sun Jul 16 18:18:10 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 18:19:16 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 18:20:21 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 18:21:27 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 18:22:34 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 18:23:41 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 18:24:47 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 18:25:53 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 18:26:58 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 18:28:04 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 18:29:10 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=104]	[Sun Jul 16 18:29:10 2017]

instance num: 1700	[Sun Jul 16 18:31:36 2017]

 done 	[Sun Jul 16 18:31:36 2017]
CM:    	806/1700 = 47.41176
ROOT:  	1652/1700 = 97.17647
UAS:   	37318/40117 = 93.02291
LAS:   	37318/40117 = 93.02291

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #105 *****	[Sun Jul 16 18:31:36 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 18:32:41 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 18:33:46 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 18:34:52 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 18:35:58 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 18:37:03 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 18:38:08 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 18:39:14 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 18:40:19 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 18:41:24 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 18:42:29 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=105]	[Sun Jul 16 18:42:29 2017]

instance num: 1700	[Sun Jul 16 18:44:55 2017]

 done 	[Sun Jul 16 18:44:55 2017]
CM:    	804/1700 = 47.29412
ROOT:  	1655/1700 = 97.35294
UAS:   	37359/40117 = 93.12511
LAS:   	37359/40117 = 93.12511

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #106 *****	[Sun Jul 16 18:44:55 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 18:46:02 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 18:47:07 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 18:48:15 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 18:49:20 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 18:50:25 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 18:51:29 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 18:52:36 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 18:53:41 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 18:54:45 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 18:55:53 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=106]	[Sun Jul 16 18:55:53 2017]

instance num: 1700	[Sun Jul 16 18:58:19 2017]

 done 	[Sun Jul 16 18:58:19 2017]
CM:    	789/1700 = 46.41176
ROOT:  	1657/1700 = 97.47059
UAS:   	37333/40117 = 93.06030
LAS:   	37333/40117 = 93.06030

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #107 *****	[Sun Jul 16 18:58:19 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 18:59:24 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 19:00:31 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 19:01:36 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 19:02:42 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 19:03:46 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 19:04:50 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 19:05:55 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 19:07:00 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 19:08:05 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 19:09:11 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=107]	[Sun Jul 16 19:09:11 2017]

instance num: 1700	[Sun Jul 16 19:11:37 2017]

 done 	[Sun Jul 16 19:11:37 2017]
CM:    	800/1700 = 47.05882
ROOT:  	1651/1700 = 97.11765
UAS:   	37309/40117 = 93.00047
LAS:   	37309/40117 = 93.00047

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #108 *****	[Sun Jul 16 19:11:37 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 19:12:44 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 19:13:49 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 19:14:55 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 19:15:59 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 19:17:05 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 19:18:09 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 19:19:15 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 19:20:21 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 19:21:26 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 19:22:33 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=108]	[Sun Jul 16 19:22:33 2017]

instance num: 1700	[Sun Jul 16 19:25:04 2017]

 done 	[Sun Jul 16 19:25:04 2017]
CM:    	806/1700 = 47.41176
ROOT:  	1648/1700 = 96.94118
UAS:   	37309/40117 = 93.00047
LAS:   	37309/40117 = 93.00047

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #109 *****	[Sun Jul 16 19:25:04 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 19:26:10 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 19:27:14 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 19:28:20 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 19:29:27 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 19:30:34 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 19:31:38 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 19:32:46 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 19:33:53 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 19:34:58 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 19:36:04 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=109]	[Sun Jul 16 19:36:04 2017]

instance num: 1700	[Sun Jul 16 19:38:32 2017]

 done 	[Sun Jul 16 19:38:32 2017]
CM:    	802/1700 = 47.17647
ROOT:  	1653/1700 = 97.23529
UAS:   	37334/40117 = 93.06279
LAS:   	37334/40117 = 93.06279

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #110 *****	[Sun Jul 16 19:38:32 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 19:39:39 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 19:40:51 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 19:41:57 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 19:43:05 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 19:44:10 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 19:45:16 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 19:46:21 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 19:47:27 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 19:48:33 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 19:49:40 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=110]	[Sun Jul 16 19:49:40 2017]

instance num: 1700	[Sun Jul 16 19:52:06 2017]

 done 	[Sun Jul 16 19:52:06 2017]
CM:    	806/1700 = 47.41176
ROOT:  	1652/1700 = 97.17647
UAS:   	37347/40117 = 93.09520
LAS:   	37347/40117 = 93.09520

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #111 *****	[Sun Jul 16 19:52:06 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 19:53:12 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 19:54:18 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 19:55:23 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 19:56:30 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 19:57:36 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 19:58:42 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 19:59:50 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 20:00:55 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 20:02:03 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 20:03:06 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=111]	[Sun Jul 16 20:03:06 2017]

instance num: 1700	[Sun Jul 16 20:05:38 2017]

 done 	[Sun Jul 16 20:05:38 2017]
CM:    	802/1700 = 47.17647
ROOT:  	1651/1700 = 97.11765
UAS:   	37302/40117 = 92.98302
LAS:   	37302/40117 = 92.98302

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #112 *****	[Sun Jul 16 20:05:38 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 20:06:42 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 20:07:49 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 20:08:53 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 20:09:58 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 20:11:03 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 20:12:09 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 20:13:17 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 20:14:22 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 20:15:27 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 20:16:34 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=112]	[Sun Jul 16 20:16:34 2017]

instance num: 1700	[Sun Jul 16 20:19:02 2017]

 done 	[Sun Jul 16 20:19:02 2017]
CM:    	804/1700 = 47.29412
ROOT:  	1645/1700 = 96.76471
UAS:   	37309/40117 = 93.00047
LAS:   	37309/40117 = 93.00047

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #113 *****	[Sun Jul 16 20:19:02 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 20:20:09 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 20:21:16 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 20:22:24 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 20:23:29 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 20:24:35 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 20:25:40 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 20:26:44 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 20:27:51 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 20:28:58 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 20:30:03 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=113]	[Sun Jul 16 20:30:03 2017]

instance num: 1700	[Sun Jul 16 20:32:31 2017]

 done 	[Sun Jul 16 20:32:31 2017]
CM:    	819/1700 = 48.17647
ROOT:  	1649/1700 = 97.00000
UAS:   	37356/40117 = 93.11763
LAS:   	37356/40117 = 93.11763

best UAS so far (a): 93.13259 [it = 102]

***** Iteration #114 *****	[Sun Jul 16 20:32:31 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 20:33:36 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 20:34:44 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 20:35:49 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 20:36:54 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 20:38:00 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 20:39:06 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 20:40:12 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 20:41:16 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 20:42:25 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 20:43:32 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=114]	[Sun Jul 16 20:43:32 2017]

instance num: 1700	[Sun Jul 16 20:46:00 2017]

 done 	[Sun Jul 16 20:46:00 2017]
CM:    	812/1700 = 47.76471
ROOT:  	1652/1700 = 97.17647
UAS:   	37387/40117 = 93.19490
LAS:   	37387/40117 = 93.19490

best UAS so far (a): 93.19490 [it = 114]

***** Iteration #115 *****	[Sun Jul 16 20:46:13 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 20:47:23 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 20:48:29 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 20:49:35 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 20:50:42 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 20:51:49 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 20:52:55 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 20:54:01 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 20:55:09 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 20:56:13 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 20:57:18 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=115]	[Sun Jul 16 20:57:18 2017]

instance num: 1700	[Sun Jul 16 20:59:46 2017]

 done 	[Sun Jul 16 20:59:46 2017]
CM:    	807/1700 = 47.47059
ROOT:  	1650/1700 = 97.05882
UAS:   	37342/40117 = 93.08273
LAS:   	37342/40117 = 93.08273

best UAS so far (a): 93.19490 [it = 114]

***** Iteration #116 *****	[Sun Jul 16 20:59:46 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 21:00:51 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 21:01:55 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 21:03:00 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 21:04:06 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 21:05:14 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 21:06:19 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 21:07:24 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 21:08:29 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 21:09:36 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 21:10:43 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=116]	[Sun Jul 16 21:10:43 2017]

instance num: 1700	[Sun Jul 16 21:13:18 2017]

 done 	[Sun Jul 16 21:13:18 2017]
CM:    	815/1700 = 47.94118
ROOT:  	1649/1700 = 97.00000
UAS:   	37360/40117 = 93.12760
LAS:   	37360/40117 = 93.12760

best UAS so far (a): 93.19490 [it = 114]

***** Iteration #117 *****	[Sun Jul 16 21:13:18 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 21:14:24 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 21:15:30 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 21:16:37 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 21:17:44 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 21:18:50 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 21:19:55 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 21:20:59 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 21:22:02 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 21:23:10 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 21:24:13 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=117]	[Sun Jul 16 21:24:13 2017]

instance num: 1700	[Sun Jul 16 21:26:41 2017]

 done 	[Sun Jul 16 21:26:41 2017]
CM:    	825/1700 = 48.52941
ROOT:  	1654/1700 = 97.29412
UAS:   	37439/40117 = 93.32453
LAS:   	37439/40117 = 93.32453

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #118 *****	[Sun Jul 16 21:26:54 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 21:28:01 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 21:29:07 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 21:30:13 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 21:31:18 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 21:32:25 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 21:33:30 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 21:34:38 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 21:35:45 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 21:36:51 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 21:37:57 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=118]	[Sun Jul 16 21:37:57 2017]

instance num: 1700	[Sun Jul 16 21:40:23 2017]

 done 	[Sun Jul 16 21:40:23 2017]
CM:    	816/1700 = 48.00000
ROOT:  	1650/1700 = 97.05882
UAS:   	37429/40117 = 93.29960
LAS:   	37429/40117 = 93.29960

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #119 *****	[Sun Jul 16 21:40:23 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 21:41:30 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 21:42:34 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 21:43:38 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 21:44:44 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 21:45:47 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 21:46:55 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 21:48:02 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 21:49:06 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 21:50:11 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 21:51:19 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=119]	[Sun Jul 16 21:51:19 2017]

instance num: 1700	[Sun Jul 16 21:53:45 2017]

 done 	[Sun Jul 16 21:53:45 2017]
CM:    	827/1700 = 48.64706
ROOT:  	1653/1700 = 97.23529
UAS:   	37432/40117 = 93.30708
LAS:   	37432/40117 = 93.30708

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #120 *****	[Sun Jul 16 21:53:45 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 21:54:52 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 21:55:57 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 21:57:02 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 21:58:06 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 21:59:12 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 22:00:17 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 22:01:23 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 22:02:28 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 22:03:35 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 22:04:41 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=120]	[Sun Jul 16 22:04:41 2017]

instance num: 1700	[Sun Jul 16 22:07:09 2017]

 done 	[Sun Jul 16 22:07:09 2017]
CM:    	812/1700 = 47.76471
ROOT:  	1648/1700 = 96.94118
UAS:   	37351/40117 = 93.10517
LAS:   	37351/40117 = 93.10517

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #121 *****	[Sun Jul 16 22:07:09 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 22:08:16 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 22:09:23 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 22:10:28 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 22:11:34 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 22:12:40 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 22:13:47 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 22:14:54 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 22:16:00 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 22:17:08 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 22:18:12 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=121]	[Sun Jul 16 22:18:12 2017]

instance num: 1700	[Sun Jul 16 22:20:40 2017]

 done 	[Sun Jul 16 22:20:40 2017]
CM:    	821/1700 = 48.29412
ROOT:  	1650/1700 = 97.05882
UAS:   	37421/40117 = 93.27966
LAS:   	37421/40117 = 93.27966

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #122 *****	[Sun Jul 16 22:20:40 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 22:21:47 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 22:22:54 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 22:24:00 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 22:25:03 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 22:26:08 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 22:27:14 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 22:28:20 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 22:29:26 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 22:30:32 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 22:31:40 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=122]	[Sun Jul 16 22:31:40 2017]

instance num: 1700	[Sun Jul 16 22:34:11 2017]

 done 	[Sun Jul 16 22:34:11 2017]
CM:    	806/1700 = 47.41176
ROOT:  	1653/1700 = 97.23529
UAS:   	37385/40117 = 93.18992
LAS:   	37385/40117 = 93.18992

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #123 *****	[Sun Jul 16 22:34:11 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 22:35:16 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 22:36:23 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 22:37:29 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 22:38:34 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 22:39:38 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 22:40:46 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 22:41:56 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 22:43:03 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 22:44:10 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 22:45:16 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=123]	[Sun Jul 16 22:45:16 2017]

instance num: 1700	[Sun Jul 16 22:47:44 2017]

 done 	[Sun Jul 16 22:47:44 2017]
CM:    	825/1700 = 48.52941
ROOT:  	1654/1700 = 97.29412
UAS:   	37355/40117 = 93.11514
LAS:   	37355/40117 = 93.11514

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #124 *****	[Sun Jul 16 22:47:44 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 22:48:50 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 22:49:56 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 22:51:00 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 22:52:06 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 22:53:13 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 22:54:20 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 22:55:24 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 22:56:30 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 22:57:35 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 22:58:42 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=124]	[Sun Jul 16 22:58:42 2017]

instance num: 1700	[Sun Jul 16 23:01:10 2017]

 done 	[Sun Jul 16 23:01:10 2017]
CM:    	812/1700 = 47.76471
ROOT:  	1655/1700 = 97.35294
UAS:   	37351/40117 = 93.10517
LAS:   	37351/40117 = 93.10517

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #125 *****	[Sun Jul 16 23:01:10 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 23:02:16 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 23:03:22 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 23:04:28 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 23:05:33 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 23:06:37 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 23:07:45 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 23:08:50 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 23:09:54 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 23:11:00 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 23:12:05 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=125]	[Sun Jul 16 23:12:05 2017]

instance num: 1700	[Sun Jul 16 23:14:33 2017]

 done 	[Sun Jul 16 23:14:33 2017]
CM:    	827/1700 = 48.64706
ROOT:  	1656/1700 = 97.41176
UAS:   	37435/40117 = 93.31455
LAS:   	37435/40117 = 93.31455

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #126 *****	[Sun Jul 16 23:14:33 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 23:15:37 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 23:16:46 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 23:17:56 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 23:19:01 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 23:20:07 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 23:21:13 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 23:22:17 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 23:23:21 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 23:24:28 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 23:25:34 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=126]	[Sun Jul 16 23:25:34 2017]

instance num: 1700	[Sun Jul 16 23:28:03 2017]

 done 	[Sun Jul 16 23:28:03 2017]
CM:    	822/1700 = 48.35294
ROOT:  	1653/1700 = 97.23529
UAS:   	37402/40117 = 93.23230
LAS:   	37402/40117 = 93.23230

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #127 *****	[Sun Jul 16 23:28:03 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 23:29:08 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 23:30:13 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 23:31:19 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 23:32:23 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 23:33:29 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 23:34:36 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 23:35:41 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 23:36:45 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 23:37:50 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 23:38:55 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=127]	[Sun Jul 16 23:38:55 2017]

instance num: 1700	[Sun Jul 16 23:41:23 2017]

 done 	[Sun Jul 16 23:41:23 2017]
CM:    	830/1700 = 48.82353
ROOT:  	1646/1700 = 96.82353
UAS:   	37396/40117 = 93.21734
LAS:   	37396/40117 = 93.21734

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #128 *****	[Sun Jul 16 23:41:23 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 23:42:28 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 23:43:33 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 23:44:40 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 23:45:45 2017]
4200 4400 4600 4800 5000 	[Sun Jul 16 23:46:50 2017]
5200 5400 5600 5800 6000 	[Sun Jul 16 23:47:55 2017]
6200 6400 6600 6800 7000 	[Sun Jul 16 23:49:00 2017]
7200 7400 7600 7800 8000 	[Sun Jul 16 23:50:08 2017]
8200 8400 8600 8800 9000 	[Sun Jul 16 23:51:12 2017]
9200 9400 9600 9800 10000 	[Sun Jul 16 23:52:23 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=128]	[Sun Jul 16 23:52:23 2017]

instance num: 1700	[Sun Jul 16 23:54:59 2017]

 done 	[Sun Jul 16 23:54:59 2017]
CM:    	839/1700 = 49.35294
ROOT:  	1647/1700 = 96.88235
UAS:   	37424/40117 = 93.28714
LAS:   	37424/40117 = 93.28714

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #129 *****	[Sun Jul 16 23:54:59 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Sun Jul 16 23:56:07 2017]
1200 1400 1600 1800 2000 	[Sun Jul 16 23:57:11 2017]
2200 2400 2600 2800 3000 	[Sun Jul 16 23:58:19 2017]
3200 3400 3600 3800 4000 	[Sun Jul 16 23:59:28 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 00:00:35 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 00:01:41 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 00:02:47 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 00:03:53 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 00:04:57 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 00:06:04 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=129]	[Mon Jul 17 00:06:04 2017]

instance num: 1700	[Mon Jul 17 00:08:33 2017]

 done 	[Mon Jul 17 00:08:33 2017]
CM:    	823/1700 = 48.41176
ROOT:  	1649/1700 = 97.00000
UAS:   	37366/40117 = 93.14256
LAS:   	37366/40117 = 93.14256

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #130 *****	[Mon Jul 17 00:08:33 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 00:09:39 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 00:10:47 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 00:11:52 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 00:12:58 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 00:14:05 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 00:15:11 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 00:16:17 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 00:17:23 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 00:18:31 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 00:19:38 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=130]	[Mon Jul 17 00:19:38 2017]

instance num: 1700	[Mon Jul 17 00:22:06 2017]

 done 	[Mon Jul 17 00:22:06 2017]
CM:    	830/1700 = 48.82353
ROOT:  	1648/1700 = 96.94118
UAS:   	37376/40117 = 93.16749
LAS:   	37376/40117 = 93.16749

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #131 *****	[Mon Jul 17 00:22:06 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 00:23:12 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 00:24:19 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 00:25:27 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 00:26:33 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 00:27:39 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 00:28:45 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 00:29:52 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 00:31:00 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 00:32:05 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 00:33:10 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=131]	[Mon Jul 17 00:33:10 2017]

instance num: 1700	[Mon Jul 17 00:35:38 2017]

 done 	[Mon Jul 17 00:35:38 2017]
CM:    	829/1700 = 48.76471
ROOT:  	1645/1700 = 96.76471
UAS:   	37344/40117 = 93.08772
LAS:   	37344/40117 = 93.08772

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #132 *****	[Mon Jul 17 00:35:38 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 00:36:41 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 00:37:48 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 00:38:53 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 00:40:00 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 00:41:04 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 00:42:08 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 00:43:14 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 00:44:21 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 00:45:27 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 00:46:30 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=132]	[Mon Jul 17 00:46:30 2017]

instance num: 1700	[Mon Jul 17 00:48:59 2017]

 done 	[Mon Jul 17 00:48:59 2017]
CM:    	822/1700 = 48.35294
ROOT:  	1653/1700 = 97.23529
UAS:   	37378/40117 = 93.17247
LAS:   	37378/40117 = 93.17247

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #133 *****	[Mon Jul 17 00:48:59 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 00:50:05 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 00:51:13 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 00:52:19 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 00:53:23 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 00:54:30 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 00:55:35 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 00:56:41 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 00:57:45 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 00:58:52 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 00:59:56 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=133]	[Mon Jul 17 00:59:56 2017]

instance num: 1700	[Mon Jul 17 01:02:25 2017]

 done 	[Mon Jul 17 01:02:25 2017]
CM:    	811/1700 = 47.70588
ROOT:  	1651/1700 = 97.11765
UAS:   	37349/40117 = 93.10018
LAS:   	37349/40117 = 93.10018

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #134 *****	[Mon Jul 17 01:02:25 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 01:03:31 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 01:04:37 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 01:05:42 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 01:06:47 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 01:07:51 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 01:08:56 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 01:10:02 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 01:11:10 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 01:12:19 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 01:13:24 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=134]	[Mon Jul 17 01:13:24 2017]

instance num: 1700	[Mon Jul 17 01:15:53 2017]

 done 	[Mon Jul 17 01:15:53 2017]
CM:    	814/1700 = 47.88235
ROOT:  	1652/1700 = 97.17647
UAS:   	37379/40117 = 93.17496
LAS:   	37379/40117 = 93.17496

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #135 *****	[Mon Jul 17 01:15:53 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 01:16:57 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 01:18:04 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 01:19:09 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 01:20:15 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 01:21:20 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 01:22:28 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 01:23:35 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 01:24:40 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 01:25:46 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 01:26:51 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=135]	[Mon Jul 17 01:26:51 2017]

instance num: 1700	[Mon Jul 17 01:29:21 2017]

 done 	[Mon Jul 17 01:29:21 2017]
CM:    	829/1700 = 48.76471
ROOT:  	1652/1700 = 97.17647
UAS:   	37391/40117 = 93.20488
LAS:   	37391/40117 = 93.20488

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #136 *****	[Mon Jul 17 01:29:21 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 01:30:26 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 01:31:30 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 01:32:37 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 01:33:44 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 01:34:51 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 01:35:57 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 01:37:02 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 01:38:07 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 01:39:12 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 01:40:18 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=136]	[Mon Jul 17 01:40:18 2017]

instance num: 1700	[Mon Jul 17 01:42:52 2017]

 done 	[Mon Jul 17 01:42:52 2017]
CM:    	826/1700 = 48.58824
ROOT:  	1658/1700 = 97.52941
UAS:   	37403/40117 = 93.23479
LAS:   	37403/40117 = 93.23479

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #137 *****	[Mon Jul 17 01:42:52 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 01:43:56 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 01:45:03 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 01:46:09 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 01:47:14 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 01:48:21 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 01:49:25 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 01:50:32 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 01:51:37 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 01:52:46 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 01:53:51 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=137]	[Mon Jul 17 01:53:51 2017]

instance num: 1700	[Mon Jul 17 01:56:21 2017]

 done 	[Mon Jul 17 01:56:21 2017]
CM:    	823/1700 = 48.41176
ROOT:  	1651/1700 = 97.11765
UAS:   	37372/40117 = 93.15751
LAS:   	37372/40117 = 93.15751

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #138 *****	[Mon Jul 17 01:56:21 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 01:57:27 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 01:58:32 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 01:59:37 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 02:00:41 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 02:01:48 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 02:02:53 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 02:03:59 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 02:05:04 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 02:06:10 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 02:07:16 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=138]	[Mon Jul 17 02:07:16 2017]

instance num: 1700	[Mon Jul 17 02:09:44 2017]

 done 	[Mon Jul 17 02:09:44 2017]
CM:    	833/1700 = 49.00000
ROOT:  	1650/1700 = 97.05882
UAS:   	37394/40117 = 93.21235
LAS:   	37394/40117 = 93.21235

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #139 *****	[Mon Jul 17 02:09:44 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 02:10:50 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 02:11:56 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 02:13:02 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 02:14:09 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 02:15:15 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 02:16:22 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 02:17:28 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 02:18:34 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 02:19:39 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 02:20:44 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=139]	[Mon Jul 17 02:20:44 2017]

instance num: 1700	[Mon Jul 17 02:23:23 2017]

 done 	[Mon Jul 17 02:23:23 2017]
CM:    	817/1700 = 48.05882
ROOT:  	1656/1700 = 97.41176
UAS:   	37406/40117 = 93.24227
LAS:   	37406/40117 = 93.24227

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #140 *****	[Mon Jul 17 02:23:23 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 02:24:29 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 02:25:35 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 02:26:41 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 02:27:47 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 02:28:52 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 02:29:59 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 02:31:04 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 02:32:12 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 02:33:19 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 02:34:24 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=140]	[Mon Jul 17 02:34:24 2017]

instance num: 1700	[Mon Jul 17 02:36:50 2017]

 done 	[Mon Jul 17 02:36:50 2017]
CM:    	808/1700 = 47.52941
ROOT:  	1649/1700 = 97.00000
UAS:   	37366/40117 = 93.14256
LAS:   	37366/40117 = 93.14256

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #141 *****	[Mon Jul 17 02:36:50 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 02:37:57 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 02:39:06 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 02:40:14 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 02:41:19 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 02:42:26 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 02:43:36 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 02:44:49 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 02:46:02 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 02:47:14 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 02:48:19 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=141]	[Mon Jul 17 02:48:19 2017]

instance num: 1700	[Mon Jul 17 02:50:46 2017]

 done 	[Mon Jul 17 02:50:46 2017]
CM:    	833/1700 = 49.00000
ROOT:  	1649/1700 = 97.00000
UAS:   	37398/40117 = 93.22232
LAS:   	37398/40117 = 93.22232

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #142 *****	[Mon Jul 17 02:50:46 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 02:51:52 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 02:52:59 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 02:54:03 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 02:55:10 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 02:56:16 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 02:57:22 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 02:58:27 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 02:59:33 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 03:00:39 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 03:01:47 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=142]	[Mon Jul 17 03:01:47 2017]

instance num: 1700	[Mon Jul 17 03:04:14 2017]

 done 	[Mon Jul 17 03:04:14 2017]
CM:    	834/1700 = 49.05882
ROOT:  	1655/1700 = 97.35294
UAS:   	37378/40117 = 93.17247
LAS:   	37378/40117 = 93.17247

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #143 *****	[Mon Jul 17 03:04:14 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 03:05:22 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 03:06:27 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 03:07:34 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 03:08:40 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 03:09:47 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 03:10:52 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 03:11:57 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 03:13:02 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 03:14:08 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 03:15:15 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=143]	[Mon Jul 17 03:15:15 2017]

instance num: 1700	[Mon Jul 17 03:17:42 2017]

 done 	[Mon Jul 17 03:17:42 2017]
CM:    	820/1700 = 48.23529
ROOT:  	1648/1700 = 96.94118
UAS:   	37425/40117 = 93.28963
LAS:   	37425/40117 = 93.28963

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #144 *****	[Mon Jul 17 03:17:42 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 03:18:48 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 03:19:54 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 03:20:59 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 03:22:05 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 03:23:11 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 03:24:18 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 03:25:21 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 03:26:26 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 03:27:33 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 03:28:38 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=144]	[Mon Jul 17 03:28:38 2017]

instance num: 1700	[Mon Jul 17 03:31:05 2017]

 done 	[Mon Jul 17 03:31:05 2017]
CM:    	809/1700 = 47.58824
ROOT:  	1649/1700 = 97.00000
UAS:   	37405/40117 = 93.23977
LAS:   	37405/40117 = 93.23977

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #145 *****	[Mon Jul 17 03:31:05 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 03:32:12 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 03:33:18 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 03:34:23 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 03:35:28 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 03:36:34 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 03:37:39 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 03:38:46 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 03:39:50 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 03:40:58 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 03:42:05 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=145]	[Mon Jul 17 03:42:05 2017]

instance num: 1700	[Mon Jul 17 03:44:32 2017]

 done 	[Mon Jul 17 03:44:32 2017]
CM:    	813/1700 = 47.82353
ROOT:  	1655/1700 = 97.35294
UAS:   	37369/40117 = 93.15004
LAS:   	37369/40117 = 93.15004

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #146 *****	[Mon Jul 17 03:44:32 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 03:45:37 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 03:46:42 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 03:47:48 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 03:48:53 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 03:49:59 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 03:51:06 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 03:52:12 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 03:53:19 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 03:54:24 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 03:55:29 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=146]	[Mon Jul 17 03:55:29 2017]

instance num: 1700	[Mon Jul 17 03:57:55 2017]

 done 	[Mon Jul 17 03:57:55 2017]
CM:    	813/1700 = 47.82353
ROOT:  	1652/1700 = 97.17647
UAS:   	37380/40117 = 93.17746
LAS:   	37380/40117 = 93.17746

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #147 *****	[Mon Jul 17 03:57:55 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 03:59:00 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 04:00:04 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 04:01:08 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 04:02:13 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 04:03:19 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 04:04:23 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 04:05:27 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 04:06:33 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 04:07:38 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 04:08:44 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=147]	[Mon Jul 17 04:08:44 2017]

instance num: 1700	[Mon Jul 17 04:11:22 2017]

 done 	[Mon Jul 17 04:11:22 2017]
CM:    	812/1700 = 47.76471
ROOT:  	1655/1700 = 97.35294
UAS:   	37393/40117 = 93.20986
LAS:   	37393/40117 = 93.20986

best UAS so far (a): 93.32453 [it = 117]

***** Iteration #148 *****	[Mon Jul 17 04:11:22 2017]
instance num from train1: 10000
preprocess instance done
200 400 600 800 1000 	[Mon Jul 17 04:12:27 2017]
1200 1400 1600 1800 2000 	[Mon Jul 17 04:13:35 2017]
2200 2400 2600 2800 3000 	[Mon Jul 17 04:14:42 2017]
3200 3400 3600 3800 4000 	[Mon Jul 17 04:15:47 2017]
4200 4400 4600 4800 5000 	[Mon Jul 17 04:16:52 2017]
5200 5400 5600 5800 6000 	[Mon Jul 17 04:17:58 2017]
6200 6400 6600 6800 7000 	[Mon Jul 17 04:19:07 2017]
7200 7400 7600 7800 8000 	[Mon Jul 17 04:20:11 2017]
8200 8400 8600 8800 9000 	[Mon Jul 17 04:21:17 2017]
9200 9400 9600 9800 10000 	[Mon Jul 17 04:22:22 2017]

*** decoding: on /data/xzjiang/GPU-study/data/Baidu_PTB_SD/ptb.english.conll.dev.txt.tag [it=148]	[Mon Jul 17 04:22:22 2017]

instance num: 1700	[Mon Jul 17 04:24:48 2017]

 done 	[Mon Jul 17 04:24:48 2017]
CM:    	821/1700 = 48.29412
ROOT:  	1656/1700 = 97.41176
UAS:   	37367/40117 = 93.14505
LAS:   	37367/40117 = 93.14505

best UAS so far (a): 93.32453 [it = 117]


 ---- STOP training due to no accuracy increase in many iterations!
