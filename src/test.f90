program test
    use calculus
    use functions
    use geo
    use vector

    implicit none
    real(8), dimension(1:6) :: lon = (/ 150, 151, 152, 153, 154, 155/)
    real(8), dimension(1:6) :: lat = (/-30, -31, -32, -33, -34, -35/)
    real(8), dimension(1:5) :: dist
    integer :: i
    real(8) :: res
    type(vec2d) :: vec1, vec2

    vec1 = vec2d(1,1)
    vec2 = vec2d(-2,2)


    lon = lon*0.0174533
    lat = lat*0.0174533

    dist = vincentyDistanceArray(lon,lat)

    do i = 1, size(dist)

        print *, i, "Vincenty distance is: ", dist(i)

    end do

    res = dotProduct2d(vec1,vec2)

    print *, "The dot product is", res


end program test
