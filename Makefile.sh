#!/bin/bash

# The following command can only retrieve where the bash command starts
current_dir=$( cd "$( dirname "${BASH_SOURCE[1]}" )" && pwd )

echo $current_dir

source_dir=$(dirname $current_dir/$1)

echo $(dirname $current_dir)

g++ $source_dir"/cpp/sort_data.cpp" -o  $source_dir"/cpp/cleandata" -std=c++0x

g++ $source_dir"/cpp/generate_retrieval_code.cpp" -o $source_dir"/cpp/generate_retrieval_code" -std=c++0x

python -m py_compile $source_dir"/quote.py" $source_dir"/compete.py" 

chmod a+x $source_dir"/quote_start.sh"
chmod a+x $source_dir"/compete_start.sh"
