#!/bin/sh

stock_root="/home/infotogo/lance/stock/"


nohup python $stock_root/compete.pyc $stock_root/shcode/sh_input1.txt $stock_root/data sh_compete_first_ &
nohup python $stock_root/compete.pyc $stock_root/shcode/sh_input2.txt $stock_root/data sh_compete_second_ &

nohup python $stock_root/compete.pyc  $stock_root/szcode/sz_input1.txt $stock_root/data sz_compete_input1_ &
nohup python $stock_root/compete.pyc  $stock_root/szcode/sz_input2.txt $stock_root/data sz_compete_input2_ &
nohup python $stock_root/compete.pyc  $stock_root/szcode/sz_input3.txt $stock_root/data sz_compete_input3_ &
nohup python $stock_root/compete.pyc  $stock_root/szcode/sz_input4.txt $stock_root/data sz_compete_input4_ &

