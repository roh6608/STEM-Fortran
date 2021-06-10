module stats
    implicit none
    contains

        function mean(x)
            real(8), dimension(:), intent(in) :: x
            real(8) :: mean, totalSum
            integer :: i
            
            do i=1,size(x)
                totalSum = totalSum + x(i)
            end do

            mean = totalSum/size(x)


        end function mean

        ! A function that returns the standard deviation of the array that is passed to it
        real(8) function standardDeviation(x)
            real(8), intent(in), dimension(:) :: x
            real(8) :: totalSum, mu
            integer :: i

            mu = mean(x)

            do i = 1, size(x)
                totalSum = totalSum + (x(i)-mu)**2
            end do

            standardDeviation = sqrt(totalSum/(size(x)-1))
        end function standardDeviation

        ! A function to sort an array passed to it, note that it is a nieve method and is slow
        function sort(x) result(sorted)
            real(8), intent(in), dimension(:) :: x
            real(8), dimension(1:size(x)) :: sorted
            logical, dimension(size(x)) :: mk
            integer :: i

            mk = .true.

            ! Sorting the array from smallest to largest
            do i = 1, size(x)
                sorted(i) = minval(x, mk)
                mk(minloc(x,mk)) = .false.
            end do

        end function sort

        ! A function to find the median of an array passed to it, not that the current method of sorting is slow
        real(8) function median(x)
            real(8), intent(in), dimension(:) :: x
            real(8), dimension(1:size(x)) :: sorted
            
            ! sorting the array
            sorted = sort(x)

            ! finding the median
            if(modulo(size(x), 2) == 1) then
                median = sorted(size(x)/2)

                else
                    median = (sorted(size(x)/2) + sorted((size(x)/2)-1))/2
            end if

        end function median

        function normalDistribution(x,sigma,mu) result(f)
            real(8), intent(in), dimension(:) :: x
            real(8), intent(in) :: sigma, mu
            real(8), dimension(1:size(x)) :: f
            integer :: i

            do i=1,size(x)
                f(i) = 1/(sigma*sqrt(2*3.1415926535))*exp(-0.5*((x(i)-mu)/(sigma))**2)
            end do
            
        end function normalDistribution


end module stats
