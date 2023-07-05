program fallible
    implicit none

    integer :: a, b, stat

    print *, "Enter 2 integers"
    read(*, *) a, b
    error: block
        call divide(a, b, stat)
        if (stat /= 0) exit error
        print *, a
        stop
    end block error
    print *, "Something went wrong"
contains
    subroutine divide(a, b, stat)
        integer, intent(inout) :: a
        integer, intent(in) :: b
        integer :: stat

        if (b == 0) then
            stat = 1
        else
            stat = 0
            a = a / b
        end if
    end subroutine
end program
