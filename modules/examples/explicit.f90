program implicit
    implicit none (type, external)

    interface
        function fibonacci(nth) result(fib)
            implicit none
            integer, intent(in) :: nth
            integer :: fib
        end function
        subroutine show(i, fib)
            implicit none
            integer, intent(in) :: i, fib
        end subroutine
    end interface

    integer :: nth, fib, i

    print *, "How many Fibonacci numbers would you like?"
    read(*,*) nth
    do i = 1, nth
        fib = fibonacci(i)
        call show(i, fib)
    end do
end program

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
