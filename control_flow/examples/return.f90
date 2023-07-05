program fallible
    implicit none

    integer :: a, b

    print *, "Enter 2 integers"
    read(*, *) a, b
    call divide(a, b, *9999)
    print *, a
    stop
    9999 continue
    print *, "Something went wrong"
contains
    subroutine divide(a, b, *)
        integer, intent(inout) :: a
        integer, intent(in) :: b

        if (b == 0) return 1
        a = a / b
    end subroutine
end program
