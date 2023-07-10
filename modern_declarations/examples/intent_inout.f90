program woah
    implicit none

    real :: one

    one = 1
    call show_it(one)
    ! call show_it(1.0) not allowed now
contains
    subroutine show_it(one)
        real, intent(inout) :: one
        print *, one
        one = 2
    end subroutine
end program
