module utils
    implicit none (type, external)
contains
    recursive function fibonacci(nth) result(fib)
        integer, intent(in) :: nth
        integer :: fib

        if (nth <= 2) then
            fib = 1
        else
            fib = fibonacci(nth-1) + fibonacci(nth-2)
        end if
    end function

    subroutine show(i, fib)
        integer, intent(in) :: i, fib

        print *, "The ", i, " number is: ", fib
    end subroutine
end module

program implicit
    use utils

    implicit none (type, external)

    integer :: nth, fib, i

    print *, "How many Fibonacci numbers would you like?"
    read(*,*) nth
    do i = 1, nth
        fib = fibonacci(i)
        call show(i, fib)
    end do
end program
