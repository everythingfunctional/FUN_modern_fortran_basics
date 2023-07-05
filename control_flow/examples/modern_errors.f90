program errors
    implicit none

    real :: a, b, c, root1, root2

    print *, "Enter the a, b and c for a*x**2 + b*x + c = 0:"
    read(*, *) a, b, c
    fallible: block
        if (b**2 < 4*a*c) exit fallible
        root1 = greater_root(a, b, c)
        root2 = lesser_root(a, b, c)
        print *, "The roots are: ", root1, " and ", root2
        stop
    end block fallible
    print *, "There are no real roots!"
contains
    function greater_root(a, b, c)
        real, intent(in) :: a, b, c
        real :: greater_root

        greater_root = (-b + sqrt(b**2 - 4*a*c))/(2*a)
    end function

    function lesser_root(a, b, c)
        real, intent(in) :: a, b, c
        real :: lesser_root

        lesser_root = (-b - sqrt(b**2 - 4*a*c))/(2*a)
    end function
end program
