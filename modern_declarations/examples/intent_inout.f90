program woah
    implicit none

    real :: one(1)

    one = 1
    call top(one)
    ! call top([1.0]) not allowed now
contains
    subroutine top(vals)
        real, intent(inout) :: vals(:)
        call show_it(vals(1))
    end subroutine
    subroutine show_it(val)
        real, intent(inout) :: val
        print *, val
        val = 2
    end subroutine
end program
