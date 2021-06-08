program test
    use array
    use calculus
    implicit none

    integer, parameter :: xLength = 200
    real, dimension(1:xLength) :: x, y
    real :: integrand

    call linspace(x,0.0,10.0,xLength)

    y = sin(x) / (x + 1)

    integrand = trapezoidalIntegrate(x,y)

    print *, integrand



end program test