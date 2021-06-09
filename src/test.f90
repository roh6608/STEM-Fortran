program test
<<<<<<< HEAD
    use stats
    use array
    use plot
    use calculus

    implicit none
    integer, parameter :: xLength = 10000
    real, dimension(1:xLength) :: x, y
    real :: avg, integral
=======
    use calculus
    use functions
    use geo

    implicit none
    real(8), dimension(1:6) :: lon = (/ 150, 151, 152, 153, 154, 155/)
    real(8), dimension(1:6) :: lat = (/-30, -31, -32, -33, -34, -35/)
    real(8), dimension(1:5) :: dist
>>>>>>> bca1f0458c514240e34a23a63f7f1a0f10001ff3
    integer :: i
    real(8) :: res

<<<<<<< HEAD
    call linspace(x,-3.0,3.0,xLength)
    avg = mean(x)
    
    print *, avg
    
    y =  normalDistribution(x,1.0,0.0)
    integral = simpsonIntegrate(x,y)
    print *, integral    
=======
>>>>>>> bca1f0458c514240e34a23a63f7f1a0f10001ff3

    lon = lon*0.0174533
    lat = lat*0.0174533

    dist = vincentyDistanceArray(lon,lat)

    do i = 1, size(dist)

        print *, i, "Vincenty distance is: ", dist(i)

    end do


end program test
