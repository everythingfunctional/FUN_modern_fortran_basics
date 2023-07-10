program woah
    implicit none

    real :: one

    one = 1
    call show_it(one)
    call show_it(1.0)
contains
    subroutine show_it(one)
        real, intent(in) :: one
        print *, one
        ! one = 2 not allowed now
    end subroutine
end program
