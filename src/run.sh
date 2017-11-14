#! /bin/tcsh
#rm out/*
#rm err/*
#rm log/*

#datasets name
#foreach VAR ("cs")
#no_cross_tune_grow_oracle
foreach VAR ("dataset1")
  bsub -q standard -W 5000 -n 16 -o ./out/$VAR.out.%J -e ./err/$VAR.err.%J /share/tjmenzie/aagrawa8/miniconda2/bin/python2.7 main.py _test "$VAR" > log/"$VAR".log
end
