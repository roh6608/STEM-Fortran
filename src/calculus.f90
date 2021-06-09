module calculus
    implicit none

    contains
        
        ! function for integrating an evenly spaced array of a function
        function trapezoidalIntegrate(x, y) result(Integral)
            real(8), intent(in) :: x(:), y(size(x))
            real(8) :: integral
            real(8) :: sum = 0, dx 
            integer :: i, xLength
            xLength = size(x)
            
            dx = (x(xLength) - x(1))/xlength

            do i=2,xLength-1
                sum = sum + y(i)
            end do

            integral = dx/2*(y(1)+y(xLength)+2*sum)
        end function

<<<<<<< HEAD
        function simpsonIntegrate(x, y) result(integral)
            real, intent(in) :: x(:), y(size(x))
            real :: integral
            real :: sum = 0, dx
=======
        ! function for integrating an evenly spaced array of a function
        function simpsonIntegrate(x, y) result(Integral)
            real(8), intent(in) :: x(:), y(size(x))
            real(8) :: integral
            real(8) :: sum = 0, dx
>>>>>>> bca1f0458c514240e34a23a63f7f1a0f10001ff3
            integer :: i, xLength
            xLength = size(x)

            dx = (x(xLength) - x(1))/xlength

            do i=2, xLength-1
                if(modulo(i,2) == 0) then
                    sum = sum + 4*y(i)
                else
                    sum = sum + 2*y(i)
                end if
            end do

            integral = dx/3*(y(1)+y(xLength)+sum)
        end function

        ! function to integrate a function defined in the functions module using the trapezoidal method
        real function trapezoid_integrate(f, a, b, n) 
            real(8) :: f
            real(8), intent(in) ::  a, b
            integer, intent(in) :: n
            integer :: k
            real(8) :: s
            s = 0
            do k=1, n-1
            s = s + f(a + (b-a)*k/n)
            end do  
            trapezoid_integrate = (b-a) * (f(a)/2 + f(b)/2 + s) / n
        end function trapezoid_integrate

        ! function to integrate a function defined in the functions module using Simpson's method
        real function simpson_integrate(f, a, b, n) 
            real(8) :: f
            real(8), intent(in) ::  a, b
            integer, intent(in) :: n
            integer :: k
            real(8) :: s
            s = 0
            do k=1, n-1
            s = s + 2**(mod(k,2)+1) * f(a + (b-a)*k/n)
            end do  
            simpson_integrate = (b-a) * (f(a) + f(b) + s) / (3*n)
        end function simpson_integrate

        ! function to calculate the Reimann sum of a function in the functions module


        

end module calculus
