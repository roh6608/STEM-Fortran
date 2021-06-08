module calculus
    implicit none

    contains

        pure function trapezoidalIntegrate(x, y) result(integrand)
            real, intent(in) :: x(:), y(size(x))
            real :: integrand

            associate(n => size(x))
                integrand = sum((y(1+1:n-0) + y(1+0:n-1))*(x(1+1:n-0) - x(1+0:n-1)))/2
            end associate
        end function

end module calculus