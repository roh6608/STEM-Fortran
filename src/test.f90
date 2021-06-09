program test
    use calculus
    use functions
    use geo

    implicit none
    real, dimension(1:6) :: lon = (/ 150, 151, 152, 153, 154, 155/)
    real, dimension(1:6) :: lat = (/-30, -31, -32, -33, -34, -35/)
    real, dimension(1:5) :: dist
    integer :: i

    lon = lon*0.0174533
    lat = lat*0.0174533

    dist = haversineDistanceArray(lon,lat)

    do i=1,size(dist)
        print *, dist(i)
    end do


end program test
