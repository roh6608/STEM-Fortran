program test
    use stats
    use array
    use plot
    use calculus

    implicit none
    integer, parameter :: xLength = 10000
    real, dimension(1:xLength) :: x, y
    real :: avg, integral
    integer :: i

    call linspace(x,-3.0,3.0,xLength)
    avg = mean(x)
    
    print *, avg
    
    y =  normalDistribution(x,1.0,0.0)
    integral = simpsonIntegrate(x,y)
    print *, integral    

    call  plot2d(x,y)

end program test
