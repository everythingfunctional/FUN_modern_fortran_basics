program woah
    implicit none

    real :: one(1)

    one = 1
    call top(one)
    call top([1.0])
contains
    subroutine top(vals)
        real, intent(in) :: vals(:)
        call show_it(vals(1))
    end subroutine
    subroutine show_it(val)
        real, intent(in) :: val
        print *, val
        ! val = 2 not allowed now
    end subroutine
end program
