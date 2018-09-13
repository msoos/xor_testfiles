#!/usr/bin/bash
set -x

for i in *par32*.cnf; do
    echo "doing $i -- with cache, presimp, gaussuntil"
    ../../build/cryptominisat5 $i  --presimp 1 --maxgaussdepth 500  --xorcache 1 --cache 1 --stamp 1 --probe 1 | grep "Total "
    echo "doing $i -- plain, gaussuntil"
     ../../build/cryptominisat5 $i --maxgaussdepth 500 | grep "Total "
done
