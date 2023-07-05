module constants
    implicit none

    real :: pi
    data pi /3.14159/
contains
    subroutine be_sneaky
        print *, "I'm in here breaking your geometry"
        pi = 2
    end subroutine
end module

program circle_area
    use constants
    implicit none

    real :: radius

    print *, "Enter the radius of the circle: "
    read(*,*) radius
    call be_sneaky
    print *, "The area is: ", area_of_circle(radius)
contains
    function area_of_circle(radius)
        real, intent(in) :: radius
        real :: area_of_circle

        area_of_circle = pi * radius**2
    end function
end program
