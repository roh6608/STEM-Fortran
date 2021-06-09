# STEM-Fortran
A collection of Fortran modules and routines for math, science and engineering calculations.

## Array Module
A collection of sub-routines and functions for operating with and on arrays. The sub-routines and functions are listed below.

- ```linspace(x, xMin, xMax, xLength)``` This subroutine will create a linearly spaced array. ```x``` is the array, ```xMin``` is the start value, ```xMax``` is the end value and ```xLength``` is the length of the array.

## Vector Module
A collection of types, sub-routines and functions for operating with and on vectors. The types, sub-routines and functions are listed below.
- ```vec2d``` is the type that defines a 2d vector, it is defined as follows.

```fortran
        type vec2d
            real(8) :: x, y
        end type vec2d
```
- ```vec3d``` is the type that defines a 3d vector, it is defined as follows.

```fortran
        type vec3d
            real(8) :: x, y, z
        end type vec3d

```
- ```dotProduct2d(vec1, vec2)``` This function will return the dot product of two, 2-dimensional vectors. It takes the arguments ```vec1``` and ```vec2```, these are both of the type ```vec2d```.
- ```dotProduct3d(vec1, vec2)``` This function will return the dot product of two, 3-dimensional vectors. It takes the arguments ```vec1``` and ```vec2```, these are both of the type ```vec3d```.
- ```dotProductNd(vec1, vec2)``` This function will return the dot product of two, n-dimensional vectors. It takes the arguments ```vec1``` and ```vec2```, these are both arrays.
- ```crossProduct(vec1, vec2)``` This function will return the cross product of two vectors as the type of ```vec3d```. It taks the arguments of ```vec1``` and ```vec2```, these are both of the type of ```vec3d```.
- ```crossProductArray(vec1, vec2)``` This function will return the cross product of two vectors as an array. It takes the arguments of ```vec1``` and ```vec2```, these are both arrays.

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
