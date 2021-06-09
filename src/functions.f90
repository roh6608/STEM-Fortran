module functions
  ! User defined function that can be operated on by the calculus module
contains
  real function f1(x)
    implicit none
    real, intent(in) :: x
    f1 = sin(x)/(x+1)
  end function f1

end module functions