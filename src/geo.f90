module geo
    implicit none

    contains

        ! A function to return a true or false for if a point lies within a circle on a flat plane
        function pointInCircle(xp,yp,xc,yc,r) result(output)
            real(8), intent(in) :: xp, yp, xc, yc, r
            logical :: output
            real(8) :: distance

            distance = ((abs(xp-xc))**2+(abs(yp-yc))**2)

            if(distance < r**2) then
                output = .true.
            end if
        end function pointInCircle

        ! A function to return the distance along the surface of the earth, assuming it is a sphere using the haversine method
        real function haversineDistance(lon1, lat1, lon2, lat2)
            real(8), intent(in) :: lon1, lon2, lat1, lat2 ! [radians]
            real(8), parameter :: radius = 6371000 ! radius of the earth [metres]
            real(8) :: a, c


            a = (sin(lat1-lat2)/2)**2 + cos(lat1)*cos(lat2)*(sin(lon2-lon1)/2)**2
            c = 2*atan2(sqrt(a),sqrt(1-a))
            haversineDistance = radius*c

        end function haversineDistance

        ! A function to return the distance along the surface of the earth, assuming it is a sphere using the haversine method, takes an array as an input
        function haversineDistanceArray(lon,lat) result(distance)
            real(8), intent(in), dimension(:) :: lon, lat
            real(8), dimension(1:size(lon)) :: distance
            integer :: i

            do i=1,size(lon)-1
                distance(i) = haversineDistance(lon(i),lat(i),lon(i+1),lat(i+1))
            end do

        end function haversineDistanceArray

        ! A function to return the distance along the surface of the earth, assuming it is the wgs-84 ellipsoid, using the vincenty method
        real function vincentyDistance(lon1,lat1,lon2,lat2)
            real(8), intent(in) :: lon1, lat1, lon2, lat2
            real(8), parameter :: radius = 6378137.0 ! equatorial radius of the earth [metres]
            real(8), parameter :: f = 1/298.257223563 ! ellipsoid flattening
            real(8), parameter :: tolerance = 1e-11 ! tolerance at which to stop iterating
            real(8) :: b, phi1, phi2, u1, u2, l1, l2, l, uTwo
            real(8) :: lambdaOld, t, sinSigma, cosSigma,sigma, sinAlpha, cosSqAlpha, cos2SigmaM, c, lambdaNew, b2, a, deltaSigma

            b = (1-f)*radius
            phi1 = lat1
            phi2 = lat2
            u1 = atan((1-f)*tan(phi1))
            u2 = atan((1-f)*tan(phi2))
            l1 = lon1
            l2 = lon2
            l = l2 - l1

            lambdaOld = l + 0

            do while(.true.)

                t = (cos(u2)*sin(lambdaOld))**2
                t = t + (cos(u1)*sin(u2)-sin(u1)*cos(u2)*cos(lambdaOld))**2
                sinSigma = t**0.5
                cosSigma = sin(u1)*sin(u2)+cos(u1)*cos(u2)*cos(lambdaOld)
                sigma = atan2(sinSigma, cosSigma)

                sinAlpha = cos(u1)*cos(u2)*sin(lambdaOld) / sinSigma
                cosSqAlpha = 1-sinAlpha**2
                cos2SigmaM = cosSigma - 2*sin(u1)*sin(u2)/cosSqAlpha
                c = f*cosSqAlpha*(4 + f*(4-3*cosSqAlpha))/16

                t = sigma + c*sinSigma*(cos2SigmaM + c*cosSigma*(-1+2*cos2SigmaM**2))
                lambdaNew = l + (1-c)*f*sinAlpha*t

                if(abs(lambdaNew - lambdaOld) <= tolerance) then
                    exit
                else
                    lambdaOld = lambdaNew
                end if
            end do

            uTwo = cosSqAlpha*((radius**2-b**2)/b**2)
            a = 1 + (uTwo/16384)*(4096 + uTwo*(-768+uTwo*(320-175*uTwo)))
            b2 = (uTwo/1024)*(256 +uTwo*(-128 + uTwo*(74 - 47*uTwo)))

            t = cos2SigmaM + 0.25*b2*(cosSigma*(-1 + 2*cos2SigmaM**2))
            t = t - (b2/6)*cos2SigmaM*(-3+4*sinSigma**2)*(-3+4*cos2SigmaM**2)
            deltaSigma = b2*sinSigma*t
            vincentyDistance = b*a*(sigma - deltaSigma)

        end function vincentyDistance

        ! A function to return the distance along the surface of the earth, assuming it is the wgs-84 ellipsoid, using the vincenty method, taking an array as an argument
        function vincentyDistanceArray(lon,lat) result(distance)
            real(8), intent(in), dimension(:) :: lon, lat
            real(8), dimension(1:size(lon)) :: distance
            integer :: i

            do i=1,size(lon)-1
                distance(i) = vincentyDistance(lon(i),lat(i),lon(i+1),lat(i+1))
            end do

        end function vincentyDistanceArray


end module geo