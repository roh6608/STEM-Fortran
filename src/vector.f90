module vector
    implicit none

        type vec2d
            real(8) :: x, y
        end type vec2d

        type vec3d
            real(8) :: x, y, z
        end type vec3d

    contains

        ! A function to compute the dot product of two, 2-dimensional vectors
        real (8) function dotProduct2d(vec1, vec2)
            type(vec2d), intent(in) :: vec1, vec2

            dotProduct2d = vec1%x*vec2%x + vec1%y*vec2%y
        end function dotProduct2d

        ! A function to compute the dot product of two, 3-dimensional vectors
        real (8) function dotProduct3d(vec1, vec2)
            type(vec3d), intent(in) :: vec1, vec2

            dotProduct3d = vec1%x*vec2%x + vec1%y*vec2%y +vec1%z*vec2%z
        end function dotProduct3d

        ! A function to compute the dot product of two, n-dimensional vectors
        real(8) function dotProductNd(vec1,vec2)
            real(8), intent(in), dimension(:) :: vec1, vec2
            integer :: i 

            do i =1, size(vec1)
                dotProductnd = dotProductnd + vec1(i)*vec2(i)
            end do
        end function dotProductnd


        

end module vector