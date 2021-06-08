module calculus
    implicit none

    contains

        function trapezoidalIntegrate(x, y) result(Integral)
            real, intent(in) :: x(:), y(size(x))
            real :: integral
            real :: sum = 0, dx 
            integer :: i, xLength
            xLength = size(x)
            
            dx = (x(xLength) - x(1))/xlength

            do i=2,xLength-1
                sum = sum + y(i)
            end do

            integral = dx/2*(y(1)+y(xLength)+2*sum)
        end function

        function simpsonIntegrate(x, y) result(Integral)
            real, intent(in) :: x(:), y(size(x))
            real :: integral
            real :: sum = 0, dx
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

        function derivitave(func, a) result(value)
            real, external :: func
            real, intent(in) :: a
            real :: f1, f2, value, diff = 1, h = 0.01, eps = 1e-7

            f1 = (func(a+h)-func(a))/h
            
            do while(diff > eps)
                h = h/2
                f2 = (func(a+h)-func(a))/h
                diff = abs(f2-f1)
                f1 = f2
            end do

            value = f2



        end function

end module calculus
