program woah
    implicit none

    real :: one

    one = 1
    call show_it(one)
    call show_it(1.0)
contains
    subroutine show_it(one)
        real :: one
        print *, one
        one = 2
    end subroutine
end program
