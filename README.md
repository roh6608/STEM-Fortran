# STEM-Fortran
A collection of Fortran modules and routines for math, science and engineering calculations.

## Array Module
A collection of sub-routines and functions for operating with and on arrays. The sub-routines and functions are listed below.

- ```linspace(x, xMin, xMax, xLength)``` This subroutine will create a linearly spaced array. ```x``` is the array, ```xMin``` is the start value, ```xMax``` is the end value and ```xLength``` is the length of the array.

## Calculus Module
A collection of sub-routines and functions for calculus based operations. The sub-routines and functions are listed below.
- ```trapezoidalIntegrate``` This function will return the integral using the trapezoidal method. It takes the arguments ```x``` and ```y``` that are in the form of arrays.
- ```simpsonIntegrate``` This function will return the integral using Simpson's method. It takes the arguments ```x``` and ```y``` that are in the form of arrays.

## Plot Module
A collection of sub-routines and functions for plotting operations. The sub-routines and functions are listed below.
- ```plot2d``` This sub-routine will save a file name data.dat to the working directory, so that it can be plotted in gnuplot or other visualisation software. It accepts to arguments ```x``` and ```y```, these are both arrays of the same length.
