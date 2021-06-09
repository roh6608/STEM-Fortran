module geo
    implicit none

    contains

        ! A function to return a true or false for if a point lies within a circle on a flat plane
        function pointInCircle(xp,yp,xc,yc,r) result(output)
            real, intent(in) :: xp, yp, xc, yc, r
            logical :: output
            real :: distance

            distance = ((abs(xp-xc))**2+(abs(yp-yc))**2)

            if(distance < r**2) then
                output = .true.
            end if
        end function pointInCircle

        ! A function to return the distance along the surface of the earth, assuming it is a sphere using the haversine method
        real function haversineDistance(lon1, lat1, lon2, lat2)
            real, intent(in) :: lon1, lon2, lat1, lat2 ! [radians]
            real, parameter :: radius = 6371000 ! radius of the earth [metres]
            real :: a, c


            a = (sin(lat1-lat2)/2)**2 + cos(lat1)*cos(lat2)*(sin(lon2-lon1)/2)**2
            c = 2*atan2(sqrt(a),sqrt(1-a))
            haversineDistance = radius*c

        end function haversineDistance

        ! A function to return the distance along the surface of the earth, assuming it is a sphere using the haversine method, takes an array as an input
        function haversineDistanceArray(lon,lat) result(distance)
            real, intent(in), dimension(:) :: lon, lat
            real, dimension(1:size(lon)) :: distance
            integer :: i

            do i=1,size(lon)-1
                distance(i) = haversineDistance(lon(i),lat(i),lon(i+1),lat(i+1))
            end do

        end function haversineDistanceArray

end module geo