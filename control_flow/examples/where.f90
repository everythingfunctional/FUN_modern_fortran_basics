program where_example
    implicit none

    integer, parameter :: a(*) = [1, 2, 3, 4, 5, 6, 7]
    integer :: b(size(a))

    where (mod(a, 2) == 0)
        b = a
    elsewhere
        b = 1
    end where
    print *, b
end program