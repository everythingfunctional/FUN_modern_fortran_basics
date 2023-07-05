program loops
    implicit none

    integer :: i

    i = 1
    10 continue
        if (mod(i, 2) == 0) goto 20
        print *, i
        20 continue
        i = i + 1
        if (i > 10) goto 30
    goto 10
    30 continue

    do 100 i = 1, 10
        if (mod(i, 2) == 0) goto 100
        print *, i
    100 continue
end program
