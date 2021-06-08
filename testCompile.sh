#!/bin/bash

gfortran -c *.f90
gfortran -o test test.f90 array.o calculus.o
echo "Compiled succesfully"

rm *.o *.mod
echo "Extra files deleted succesfully"
