program test
    use stats
    use array
    use plot

    implicit none
    integer, parameter :: xLength = 100
    real, dimension(1:xLength) :: x, y
    real :: avg
    integer :: i

    call linspace(x,-3.0,3.0,xLength)
    avg = mean(x)
    
    print *, avg
    
    y =  normalDistribution(x,1.0,0.0)
    
    print *, y    

    call  plot2d(x,y)

end program test
