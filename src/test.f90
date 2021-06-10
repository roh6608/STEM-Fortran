program test
    use stats

    implicit none
    real(8), dimension(1:2) :: x = (/1,2/)
    real(8) :: sd, avg
    integer :: i

    sd = standardDeviation(x)
    avg = mean(x)

    print *, "The standard deviation is; ", sd
    print *, "The mean is; ", avg

    



end program test
