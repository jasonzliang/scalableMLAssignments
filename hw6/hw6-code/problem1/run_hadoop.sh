#!/bin/bash

input_directory=$1

hadoop fs -rm -r /user/jliang/${input_directory}_out
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=2 -input /user/naga86/hw6/${input_directory}/*/* -output /user/jliang/${input_directory}_out \
-file word_freq_mapper.py -mapper word_freq_mapper.py -file word_freq_reducer.py -reducer word_freq_reducer.py
# rm -rf ${input_directory}_out
# hadoop fs -copyToLocal /user/jliang/${input_directory}_out .

hadoop fs -rm -r /user/jliang/${input_directory}_out2
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=1 -input /user/jliang/${input_directory}_out -output /user/jliang/${input_directory}_out2 \
-file word_count_mapper.py -mapper word_count_mapper.py -file word_count_reducer.py -reducer word_count_reducer.py
# rm -rf ${input_directory}_out2
# hadoop fs -copyToLocal /user/jliang/${input_directory}_out2 .

cp ${input_directory}_num_documents.txt num_documents.txt
hadoop fs -rm -r /user/jliang/${input_directory}_out3
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=2 -input /user/jliang/${input_directory}_out2 -output /user/jliang/${input_directory}_out3 \
-file word_freq_corpus_mapper.py -mapper word_freq_corpus_mapper.py -file word_freq_corpus_reducer.py -reducer word_freq_corpus_reducer.py -file num_documents.txt

rm num_documents.txt
rm -rf ${input_directory}_out3
hadoop fs -copyToLocal /user/jliang/${input_directory}_out3 .