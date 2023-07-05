program conditional
    implicit none

    integer :: i

    print *, "Option 1, 2 or 3?"
    read(*, *) i

    select case (i)
    case (1)
        print *, "You selected option 1"
    case (2)
        print *, "You selected option 2"
    case (3)
        print *, "You selected option 3"
    case default
        print *, "Unknown option"
    end select

    print *, "Enter another integer:"
    read(*, *) i

    if (i < 0) then
        print *, "Your number was negative"
    else if (i > 0) then
        print *, "Your number was positive"
    else
        print *, "Your number was 0"
    end if
end program
