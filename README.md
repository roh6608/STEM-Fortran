# STEM-Fortran
A collection of Fortran modules and routines for math, science and engineering calculations.

## Array Module
A collection of sub-routines and functions for operating with and on arrays. The sub-routines and functions are listed below.

- ```linspace(x, xMin, xMax, xLength)``` This subroutine will create a linearly spaced array. ```x``` is the array, ```xMin``` is the start value, ```xMax``` is the end value and ```xLength``` is the length of the array.

## Calculus Module
A collection of sub-routines and functions for calculus based operations. The sub-routines and functions are listed below.
- ```trapezoidalIntegrate``` This function will return the integral using the trapezoidal method. It takes the arguments ```x``` and ```y``` that are in the form of arrays.
- ```simpsonIntegrate``` This function will return the integral using Simpson's method. It takes the arguments ```x``` and ```y``` that are in the form of arrays.
- ```trapezoid_integrate``` This function will return the integral using the trapezoidal method. It takes the arguments, ```f``` the function to be integrated, ```a``` and ```b``` the bounds and ```n``` for the number of sub intervals.
- ```simpson_integrate``` This function will return the integral using Simpson's method. It takes the arguments, ```f``` the function to be integrated, ```a``` and ```b``` the bounds and ```n``` for the number of sub intervals.

## Functions Module
A module where users define their own mathematical functions.

## Plot Module
A collection of sub-routines and functions for plotting operations. The sub-routines and functions are listed below.
- ```plot2d``` This sub-routine will save a file named data.dat to the working directory, so that it can be plotted in gnuplot or other visualisation software. It accepts to arguments ```x``` and ```y```, these are both arrays of the same length.

## Stats Module
A collection of sub-routines and functions for statistical operations. The sub-routines and functions are lised below.
- ```mean``` This function will return the mean value of an input array ```x```
- ```normalDistrubtions``` This function will return a normal distribution. It takes arguments ```x``` an input array to operate on, ```sigma``` the standard deviation of the normal distribution and ```mu``` the mean of the normal distribution.

## Geo Module
A collection of sub-routines and functions for geographical operations. The sub-routines and functions are listed below.
- ```pointInCircle``` This function will return a boolean value, true or false, for if the point lies within the circle, this function assumes standard rectangular coordinates and is not recommended to be used for spheres or ellipsoids. It takes the arguments ```px``` and ```py``` for the x and y coordinates of the point, ```cx``` and ```cy``` for the coordinates of the circle centre and ```r``` for the radius of the circle.
- ```haversineDistance``` This function will return the distance between two points on the surface of the earth, assuming it is a sphere. It takes the arguments, ```lon1``` and ```lat1``` for the coordinates of the first point and ```lon2``` and ```lat2``` for the coordinates of the second point.
- ```haversineDistanceArray``` This function will return the distance between successive points in an array, using the above ```haversineDistance``` function.
- ```vincentyDistance``` This function will return the distance between two points on the surface of the earth, assuming it is the WGS-84 ellipsoid. It takes the arguments, ```lon1``` and ```lat1``` for the coordinates of the first point and ```lon2``` and ```lat2``` for the coordinates of the second point.
- ```vincentyDistanceArray``` This function will return the distance between successive points in an array, using the above ```vincentyDistance``` function.
