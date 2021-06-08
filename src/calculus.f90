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

        

end module calculus
