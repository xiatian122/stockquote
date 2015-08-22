#!/bin/sh

stock_root="/home/infotogo/lance/stock/"

nohup python $stock_root/quote.pyc $stock_root/shcode/sh_input1.txt $stock_root/data sh_quote_first_ &
nohup python $stock_root/quote.pyc $stock_root/shcode/sh_input2.txt $stock_root/data sh_quote_second_ &

nohup python $stock_root/quote.pyc  $stock_root/szcode/sz_input1.txt $stock_root/data sz_quote_input1_ &
nohup python $stock_root/quote.pyc  $stock_root/szcode/sz_input2.txt $stock_root/data sz_quote_input2_ &
nohup python $stock_root/quote.pyc  $stock_root/szcode/sz_input3.txt $stock_root/data sz_quote_input3_ &
nohup python $stock_root/quote.pyc  $stock_root/szcode/sz_input4.txt $stock_root/data sz_quote_input4_ &

