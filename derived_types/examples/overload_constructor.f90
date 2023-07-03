module circle_m
    implicit none
    private
    public :: circle_t

    type :: circle_t
        real :: radius
        real :: area
    end type

    interface circle_t
        module procedure from_diameter
    end interface
contains
    function from_diameter(diameter) result(circle)
        real, intent(in) :: diameter
        type(circle_t) :: circle

        circle%radius = diameter / 2
        circle%area = 3.14 * circle%radius**2
    end function
end module

program main
    use circle_m, only: circle_t

    implicit none

    type(circle_t) :: circle

    circle = circle_t(2.0)
    print *, circle%area
end program
