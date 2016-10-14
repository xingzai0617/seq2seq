#!/bin/bash

config=experiments/speech_translation/ensemble/model_1.yaml
ensemble_dir=experiments/speech_translation/ensemble
model_dir=${ensemble_dir}/model_1
data_dir=experiments/speech/data

parameters="-v"
python2 -m translate ${config} --decode ${data_dir}/dev.Agnes --output ${ensemble_dir}/dev.Agnes.greedy.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Agnes --output ${ensemble_dir}/test1.Agnes.greedy.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Agnes --output ${ensemble_dir}/test2.Agnes.greedy.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Agnes --output ${ensemble_dir}/train.1000.Agnes.greedy.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/dev.Michel --output ${ensemble_dir}/dev.Michel.greedy.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Michel --output ${ensemble_dir}/test1.Michel.greedy.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Michel --output ${ensemble_dir}/test2.Michel.greedy.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Michel --output ${ensemble_dir}/train.1000.Michel.greedy.out ${parameters}

parameters="-v --beam-size 8"
python2 -m translate ${config} --decode ${data_dir}/dev.Agnes --output ${ensemble_dir}/dev.Agnes.beam8.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Agnes --output ${ensemble_dir}/test1.Agnes.beam8.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Agnes --output ${ensemble_dir}/test2.Agnes.beam8.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Agnes --output ${ensemble_dir}/train.1000.Agnes.beam8.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/dev.Michel --output ${ensemble_dir}/dev.Michel.beam8.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Michel --output ${ensemble_dir}/test1.Michel.beam8.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Michel --output ${ensemble_dir}/test2.Michel.beam8.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Michel --output ${ensemble_dir}/train.1000.Michel.beam8.out ${parameters}

parameters="-v --beam-size 8 --lm-file ${data_dir}/btec.arpa --lm-weight 0.2"
python2 -m translate ${config} --decode ${data_dir}/dev.Agnes --output ${ensemble_dir}/dev.Agnes.beam8.lm20.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Agnes --output ${ensemble_dir}/test1.Agnes.beam8.lm20.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Agnes --output ${ensemble_dir}/test2.Agnes.beam8.lm20.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Agnes --output ${ensemble_dir}/train.1000.Agnes.beam8.lm20.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/dev.Michel --output ${ensemble_dir}/dev.Michel.beam8.lm20.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Michel --output ${ensemble_dir}/test1.Michel.beam8.lm20.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Michel --output ${ensemble_dir}/test2.Michel.beam8.lm20.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Michel --output ${ensemble_dir}/train.1000.Michel.beam8.lm20.out ${parameters}

parameters="-v --beam-size 8 --lm-file ${data_dir}/btec.arpa --lm-weight 0.2 --ensemble --checkpoints ${ensemble_dir}/model_{1,2,3,4,5}/checkpoints/best"
python2 -m translate ${config} --decode ${data_dir}/dev.Agnes --output ${ensemble_dir}/dev.Agnes.beam8.lm20.ensemble.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Agnes -v --output ${ensemble_dir}/test1.Agnes.beam8.lm20.ensemble.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Agnes -v --output ${ensemble_dir}/test2.Agnes.beam8.lm20.ensemble.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Agnes -v --output ${ensemble_dir}/train.1000.Agnes.beam8.lm20.ensemble.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/dev.Michel --output ${ensemble_dir}/dev.Michel.beam8.lm20.ensemble.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test1.Michel -v --output ${ensemble_dir}/test1.Michel.beam8.lm20.ensemble.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/test2.Michel -v --output ${ensemble_dir}/test2.Michel.beam8.lm20.ensemble.out ${parameters}
python2 -m translate ${config} --decode ${data_dir}/train.1000.Michel -v --output ${ensemble_dir}/train.1000.Michel.beam8.lm20.ensemble.out ${parameters}
