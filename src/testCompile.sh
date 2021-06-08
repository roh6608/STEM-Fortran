#!/bin/bash

gfortran -c *.f90
gfortran -o test test.f90 array.o calculus.o
rm *.o *.mod
