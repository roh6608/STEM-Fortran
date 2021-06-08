#!/bin/bash

gfortran -c *.f90

echo 'All files compied successfully'

gfortran -o test test.f90 array.o calculus.o plot.o stats.o

echo 'Binary creation successful'

rm *.o *.mod

echo 'Excess file removed'

./test
