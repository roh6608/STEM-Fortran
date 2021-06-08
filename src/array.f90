module array
    implicit none

    contains

        subroutine linspace(x, xMin, xMax, xLength)
            real, dimension(:), intent(out) :: x
            real :: xMin, xMax, by
            integer :: xLength, i
            
            by = (xMax - xMin) / (real(xLength) - 1)

            x(1:xLength) = [(xMin + ((i-1)*by), i = 1, xLength]

        end subroutine linspace


end module array
