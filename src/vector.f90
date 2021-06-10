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

        ! A function to compute the cross product, using the vec3d type
        function  crossProduct(vec1, vec2) result(output)
            type(vec3d), intent(in) :: vec1, vec2
            type(vec3d) :: output

            output = vec3d((vec1%y*vec2%z-vec1%z*vec2%y),(vec1%z*vec2%x-vec1%x*vec2%z),(vec1%x*vec2%y-vec1%y*vec2%x))
        end function crossProduct

        ! A functon to compute the cross product, using arrays
        function crossProductArray(vec1, vec2) result(output)
            real(8), intent(in), dimension(:) :: vec1, vec2
            real(8), dimension(1:size(vec1)) :: output
            output = (/(vec1(2)*vec2(3)-vec1(3)*vec2(2)),(vec1(3)*vec2(1)-vec1(1)*vec2(3)),(vec1(1)*vec2(2)-vec1(2)*vec2(1))/)

        end function crossProductArray

        ! A function to add 2d vectors
        function vecAdd2d(vec1, vec2) result(output)
            type(vec2d), intent(in) :: vec1, vec2
            type(vec2d) :: output

            output = vec2d((vec1%x+vec2%x),(vec1%y+vec2%y))

        end function vecAdd2d

        ! A function to add 3d vectors
        function vecAdd3d(vec1, vec2) result(output)
            type(vec3d), intent(in) :: vec1, vec2
            type(vec3d) :: output

            output = vec3d((vec1%x+vec2%x),(vec1%y+vec2%y),(vec1%z+vec2%z))

        end function vecAdd3d

        ! A function to add vectors using arrays
        function vecAddArray(vec1, vec2) result(output)
            real(8), intent(in), dimension(:) :: vec1, vec2
            real(8), dimension(1:size(vec1)) :: output
            integer :: i

            do i = 1, size(vec1)
                output(i) = vec1(i) + vec2(i)
            end do
        end function vecAddArray

        ! A function to return the magnitude of a 2d vector of type vec2d
        real (8) function magnitude2d(vec)
            type(vec2d), intent(in) :: vec

            magnitude2d = sqrt(vec%x**2+vec%y**2)
        end function magnitude2d

        ! A function to return the magnitude of a 3d vector of type vec3d
        real(8) function magnitude3d(vec)
            type(vec3d), intent(in) :: vec

            magnitude3d = sqrt(vec%x**2+vec%y**2+vec%z**2)
        end function magnitude3d

        ! A function to return the magnitude of a nd vector of type array
        function magnitudeArray(vec) result(output)
            real(8), intent(in), dimension(:) :: vec
            real(8) :: output, totalSum
            integer :: i

            do i = 1, size(vec)
                totalSum = totalSum + vec(i)**2
            end do

            output = sqrt(totalSum)
        end function magnitudeArray

        ! A function to return the unit vector of a 2d input vector of type vec2d
        function unitVec2d(vec) result(output)
            type(vec2d), intent(in) :: vec
            type(vec2d) :: output

            output = vec2d(1/magnitude2d(vec)*vec%x,1/magnitude2d(vec)*vec%y)
        end function unitVec2d

        ! A function to return the unit vector of a 3d input vector of type vec3d
        function unitVec3d(vec) result(output)
            type(vec3d), intent(in) :: vec
            type(vec3d) :: output

            output = vec3d(1/magnitude3d(vec)*vec%x,1/magnitude3d(vec)*vec%y, 1/magnitude3d(vec)*vec%z)
        end function unitVec3d

        ! A function to return the unit vector of a nd input vector of type array
        function unitVecArray(vec) result(output)
            real(8), intent(in), dimension(:) :: vec
            real(8), dimension(1:size(vec)) :: output
            real(8) :: magnitude
            integer :: i    

             magnitude = magnitudeArray(vec)

            do i = 1, size(vec)
                output(i) = 1/magnitude*vec(i)
            end do
        end function unitVecArray

        

end module vector