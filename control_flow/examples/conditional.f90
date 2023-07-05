program conditional
    implicit none

    integer :: i

    print *, "Option 1, 2 or 3?"
    read(*, *) i

    goto (10, 20, 30) i
    goto 40

    10 continue
    print *, "You selected option 1"
    goto 99

    20 continue
    print *, "You selected option 2"
    goto 99

    30 continue
    print *, "You selection option 3"
    goto 99

    40 continue
    print *, "Unknown option"

    99 continue

    print *, "Enter another integer:"
    read(*, *) i

    if (i) 100, 200, 300

    100 continue
    print *, "Your number was negative"
    goto 999

    200 continue
    print *, "Your number was 0"
    goto 999

    300 continue
    print *, "Your number was positive"
    goto 999

    999 continue
end program
