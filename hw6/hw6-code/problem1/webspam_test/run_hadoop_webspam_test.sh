#!/bin/bash
input_directory=test

# i=99
# hadoop fs -rm -r /user/jliang/${input_directory}_stage1_out*
# hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
# -D stream.num.map.output.key.fields=2 -input /user/naga86/hw6/webspam/${input_directory}/*/*${i}.txt -output /user/jliang/${input_directory}_stage1_out${i} \
# -file word_freq_mapper_webspam_test.py -mapper word_freq_mapper_webspam_test.py -file word_freq_reducer_webspam.py -reducer word_freq_reducer_webspam.py -file vocabulary.txt
# rm -rf ${input_directory}_stage1_out99
# hadoop fs -copyToLocal /user/jliang/${input_directory}_stage1_out99 .

hadoop fs -rm -r /user/jliang/${input_directory}_stage1_out*
for ((i=0;i<=9;i++)); do
	hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
	-D stream.num.map.output.key.fields=2 -input /user/naga86/hw6/webspam/${input_directory}/*/*${i}.txt -output /user/jliang/${input_directory}_stage1_out${i} \
	-file word_freq_mapper_webspam_test.py -mapper word_freq_mapper_webspam_test.py -file word_freq_reducer_webspam.py -reducer word_freq_reducer_webspam.py -file vocabulary.txt
done

hadoop fs -rm -r /user/jliang/${input_directory}_out2
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=1 -input /user/jliang/${input_directory}_stage1_out* -output /user/jliang/${input_directory}_out2 \
-file word_count_mapper.py -mapper word_count_mapper.py -file word_count_reducer.py -reducer word_count_reducer.py
# rm -rf ${input_directory}_out2
# hadoop fs -copyToLocal /user/jliang/${input_directory}_out2 .

hadoop fs -rm -r /user/jliang/${input_directory}_out3
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=2 -input /user/jliang/${input_directory}_out2 -output /user/jliang/${input_directory}_out3 \
-file word_freq_corpus_mapper.py -mapper word_freq_corpus_mapper.py -file word_freq_corpus_reducer_webspam_test.py -reducer word_freq_corpus_reducer_webspam_test.py -file vocabulary.txt -file train_idf.txt
# rm -rf ${input_directory}_out3
# hadoop fs -copyToLocal /user/jliang/${input_directory}_out3 .

hadoop fs -rm -r /user/jliang/${input_directory}_out4
hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar \
-D stream.num.map.output.key.fields=1 -input /user/jliang/${input_directory}_out3 -output /user/jliang/${input_directory}_out4 \
-file format_output_mapper.py -mapper format_output_mapper.py -file format_output_reducer.py -reducer format_output_reducer.py
rm -rf ${input_directory}_out4
hadoop fs -copyToLocal /user/jliang/${input_directory}_out4 .
