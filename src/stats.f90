module stats
    implicit none
    contains

        function mean(x)
            real, dimension(:), intent(in) :: x
            real :: mean, totalSum = 0
            integer :: i
            
            do i=1,size(x)
                totalSum = totalSum + x(i)
            end do

            mean = totalSum/size(x)


        end function mean

        function normalDistribution(x,sigma,mu) result(f)
            real, intent(in), dimension(:) :: x
            real, intent(in) :: sigma, mu
            real, dimension(1:size(x)) :: f
            integer :: i

            do i=1,size(x)
                f(i) = 1/(sigma*sqrt(2*3.1415926535))*exp(-0.5*((x(i)-mu)/(sigma))**2)
            end do
            
        end function normalDistribution


end module stats
