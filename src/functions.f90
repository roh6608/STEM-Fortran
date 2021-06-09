module functions
  ! User defined function that can be operated on by the calculus module
contains
  real function f1(x)
    implicit none
    real(8), intent(in) :: x
    f1 = 1/(2*x-3)
  end function f1

end module functions