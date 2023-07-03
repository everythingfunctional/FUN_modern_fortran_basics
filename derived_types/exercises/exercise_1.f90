program triangle_perimeter
    implicit none

    real :: x(3), y(3), lengths(3)
    integer :: i

    print *, "Enter the positions (x and y) of the vertices."
    do i = 1, 3
        print *, "Vertex ", i, " x and y:"
        read(*,*) x(i), y(i)
    end do

    do i = 1, 3
        lengths(i) = distance_between(x(i), y(i), x(mod(i, 3)+1), y(mod(i, 3)+1))
    end do
    print *, "The perimeter is ", sum(lengths)
contains
    function distance_between(x1, y1, x2, y2)
        real, intent(in) :: x1, y1, x2, y2
        real :: distance_between

        distance_between = hypot(x2-x1, y2-y1)
    end function
end program
