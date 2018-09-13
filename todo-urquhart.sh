#!/usr/bin/bash
set -x

for i in *Urqu*.cnf; do
    echo "doing $i -- with cache, presimp"
    ../../build/cryptominisat5 $i  --presimp 1 --xorcache 1 --cache 1 --stamp 1 --probe 1 --maxxorsize 7 | grep "Total "
    echo "doing $i -- plain"
    ../../build/cryptominisat5 $i | grep "Total "
done
