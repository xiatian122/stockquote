#!/bin/sh
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

tail -n 816 shcode.txt > sh_input2.txt
head -n 816 shcode.txt > sh_input1.txt

# use genera_code form the binary file in the cpp folder to generate inputfile based on files generated above
