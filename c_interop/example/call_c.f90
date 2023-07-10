program call_c
    use iso_c_binding, only: c_float
    implicit none (type, external)

    interface
        function greater_root(a, b, c) bind(C)
            import :: c_float
            implicit none (type, external)
            real(c_float), intent(in), value :: a, b, c
            real(c_float) :: greater_root
        end function

        function lesser_root(a, b, c) bind(C)
            import :: c_float
            implicit none (type, external)
            real(c_float), intent(in), value :: a, b, c
            real(c_float) :: lesser_root
        end function
    end interface

    real :: a, b, c, root1, root2

    print *, "Enter the a, b and c for a*x**2 + b*x + c = 0:"
    read(*, *) a, b, c
    root1 = greater_root(a, b, c)
    root2 = lesser_root(a, b, c)
    print *, "The roots are: ", root1, " and ", root2
end program