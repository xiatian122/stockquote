#/bin/sh

head -n 1003 szcode.txt > a.txt
tail -n 1004 szcode.txt > b.txt

head -n 501 a.txt > sz_input1.txt
tail -n 502 a.txt > sz_input2.txt

head -n 502 b.txt > sz_input3.txt
tail -n 502 b.txt > sz_input4.txt

rm a.txt b.txt

# use genera_code form the binary file in the cpp folder to generate inputfile based on files generated above
