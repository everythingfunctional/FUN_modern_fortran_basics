program construct
    implicit none

    type :: my_t
        integer :: a
        real :: b = 3.14
        character(len=:), allocatable :: c
    end type

    type(my_t) :: var

    var = my_t(42, c="Hello")

    print *, var%a
    print *, var%b
    print *, var%c
end program
