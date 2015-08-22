#!/bin/bash



file_list=$(ls locations)

mkdir tmp_data

for i in $file_list
do
	./sort_data locations/$i ./tmp_data/$i & 
done