program test
    use array
    use calculus
    implicit none

    integer, parameter :: xLength = 200
    real, dimension(1:xLength) :: x, y
    real :: integrand1, integrand2

    call linspace(x,0.0,10.0,xLength)

    y = sin(x) / (x + 1)

    integrand1 = trapezoidalIntegrate(x,y)
    integrand2 = simpsonIntegrate(x,y)
    print *, integrand1, integrand2
    



end program test