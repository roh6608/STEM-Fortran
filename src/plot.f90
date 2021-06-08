module plot
    implicit none
    contains

        subroutine plot2d(x, y)
            real, intent(in), dimension(:) :: x, y
            integer :: i
            
            open(unit = 1, file = 'data.dat')

            do i = 1, size(x)
                write(1,*) x(i), ' ', y(i)
            end do
        end subroutine plot2d





end module plot