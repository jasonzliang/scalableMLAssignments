#!/bin/bash
input_directory=train

# i=99
# hadoop fs -rm -r /user/jliang/${input_directory}_stage1_out*
# hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
# -D stream.num.map.output.key.fields=2 -input /user/naga86/hw6/webspam/${input_directory}/*/*${i}.txt -output /user/jliang/${input_directory}_stage1_out${i} \
# -file word_freq_mapper.py -mapper word_freq_mapper.py -file word_freq_reducer_webspam.py -reducer word_freq_reducer_webspam.py
#
# rm -rf ${input_directory}_stage1_out99
# hadoop fs -copyToLocal /user/jliang/${input_directory}_stage1_out99 .

# hadoop fs -rm -r /user/jliang/${input_directory}_stage1_out*
# for ((i=0;i<=9;i++)); do
# 	hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
# 	-D stream.num.map.output.key.fields=2 -input /user/naga86/hw6/webspam/${input_directory}/*/*${i}.txt -output /user/jliang/${input_directory}_stage1_out${i} \
# 	-file word_freq_mapper.py -mapper word_freq_mapper.py -file word_freq_reducer_webspam.py -reducer word_freq_reducer_webspam.py
# done

# hadoop fs -rm -r /user/jliang/${input_directory}_out2
# hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
# -D stream.num.map.output.key.fields=1 -input /user/jliang/${input_directory}_stage1_out* -output /user/jliang/${input_directory}_out2 \
# -file word_count_mapper.py -mapper word_count_mapper.py -file word_count_reducer.py -reducer word_count_reducer.py
# rm -rf ${input_directory}_out2
# hadoop fs -copyToLocal /user/jliang/${input_directory}_out2 .

hadoop fs -rm -r /user/jliang/${input_directory}_idf
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=2 -input /user/jliang/${input_directory}_out2 -output /user/jliang/${input_directory}_idf \
-file word_freq_corpus_mapper.py -mapper word_freq_corpus_mapper.py -file word_freq_corpus_reducer_webspam_idf.py -reducer word_freq_corpus_reducer_webspam_idf.py -file num_documents.txt
rm -rf ${input_directory}_idf
hadoop fs -copyToLocal /user/jliang/${input_directory}_idf .

hadoop fs -rm -r /user/jliang/${input_directory}_out3
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=2 -input /user/jliang/${input_directory}_out2 -output /user/jliang/${input_directory}_out3 \
-file word_freq_corpus_mapper.py -mapper word_freq_corpus_mapper.py -file word_freq_corpus_reducer.py -reducer word_freq_corpus_reducer.py -file num_documents.txt
# rm -rf ${input_directory}_out3
# hadoop fs -copyToLocal /user/jliang/${input_directory}_out3 .

hadoop fs -rm -r /user/jliang/${input_directory}_vocab
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=1 -input /user/jliang/${input_directory}_out3 -output /user/jliang/${input_directory}_vocab \
-file format_output_mapper.py -mapper format_output_mapper.py -file format_output_reducer_vocabulary.py -reducer format_output_reducer_vocabulary.py
rm -rf ${input_directory}_vocab
hadoop fs -copyToLocal /user/jliang/${input_directory}_vocab .

hadoop fs -rm -r /user/jliang/${input_directory}_out4
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=1 -input /user/jliang/${input_directory}_out3 -output /user/jliang/${input_directory}_out4 \
-file format_output_mapper.py -mapper format_output_mapper.py -file format_output_reducer.py -reducer format_output_reducer.py
rm -rf ${input_directory}_out4
hadoop fs -copyToLocal /user/jliang/${input_directory}_out4 .
