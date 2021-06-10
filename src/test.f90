program test
    use stats

    implicit none
    real(8), dimension(1:10) :: x , sorted
    real(8) :: start, finish, med
    integer :: i

    call random_number(x)

    call cpu_time(start)
    med = median(x)
    call cpu_time(finish)

    
    print *, "The median is", med
    print *, "The time taken is", (finish-start)
    print *, "The size of the array is", size(x)



end program test
