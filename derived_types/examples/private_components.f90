module circle_m
    implicit none
    private
    public :: circle_t

    type :: circle_t
        private
        real :: radius
    contains
        procedure :: area
    end type

    interface circle_t
        module procedure from_diameter
    end interface
contains
    function from_diameter(diameter) result(circle)
        real, intent(in) :: diameter
        type(circle_t) :: circle

        circle%radius = diameter / 2
    end function

    function area(self)
        class(circle_t), intent(in) :: self
        real :: area

        area = 3.14 * self%radius**2
    end function
end module

program main
    use circle_m, only: circle_t

    implicit none

    type(circle_t) :: circle

    circle = circle_t(2.0)
    print *, circle%area()
end program
