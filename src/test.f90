program test
    use calculus
    use functions

    implicit none
    real :: integral

    ! integrating he function f1
    integral=trapezoid_integrate(f1, 0.0, 1.0, 10000)
    write (*,*) 'Trapezoid rule = ', integral
    integral=simpson_integrate(f1, 0.0, 1.0, 10000)
    write (*,*) "Simpson's rule = ", integral


end program test
