program quadratic
    real :: a, b, c, root1, root2, greater_root, lesser_root

    print *, "Enter the a, b and c for a*x**2 + b*x + c = 0:"
    read(*, *) a, b, c
    root1 = greater_root(a, b, c)
    root2 = lesser_root(a, b, c)
    print *, "The roots are: ", root1, " and ", root2
end program

function greater_root(a, b, c)
    real :: a, b, c, greater_root

    greater_root = (-b + sqrt(b**2 - 4*a*c))/(2*a)
end function

function lesser_root(a, b, c)
    real :: a, b, c, lesser_root

    lesser_root = (-b - sqrt(b**2 - 4*a*c))/(2*a)
end function
