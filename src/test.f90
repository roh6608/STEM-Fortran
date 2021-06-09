program test
    use geo
    use vector

    implicit none
    real(8), dimension(1:6) :: lon = (/ 150, 151, 152, 153, 154, 155/)
    real(8), dimension(1:6) :: lat = (/-30, -31, -32, -33, -34, -35/)
    real(8), dimension(1:5) :: dist
    integer :: i
    type(vec3d) :: res
    type(vec3d) :: vec1, vec2
    real(8), dimension(1:3) :: u = (/1,1,1/), v = (/-2,2,0/), w

    vec1 = vec3d(1,1,1)
    vec2 = vec3d(-2,2,0)
 


    lon = lon*0.0174533
    lat = lat*0.0174533

    dist = vincentyDistanceArray(lon,lat)

    do i = 1, size(dist)

        print *, i, "Vincenty distance is: ", dist(i)

    end do

    res = crossProduct(vec1,vec2)

    print *, "The cross product is", res

    w = crossProductArray(u,v)

    print *, "the cross product is", w


end program test
