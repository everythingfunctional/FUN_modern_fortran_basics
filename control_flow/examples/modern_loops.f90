program loops
    implicit none

    integer :: i

    i = 0
    do
        i = i + 1
        if (i > 10) exit
        if (mod(i, 2) == 0) cycle
        print *, i
    end do

    i = 0
    do while (i < 10)
        i = i + 1
        if (mod(i, 2) == 0) cycle
        print *, i
    end do

    do i = 1, 10, 2
        print *, i
    end do
end program
