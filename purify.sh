#!/bin/bash

file_list=$(ls data)

for i in $file_list
do
	./sort_data $(readlink -f ./data/$i) $(readlink -f ./pure_data)/$i
done

#rm data/*