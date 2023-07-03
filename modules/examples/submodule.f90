module utils
    implicit none (type, external)

    interface
        recursive module function fibonacci(nth) result(fib)
            implicit none (type, external)
            integer, intent(in) :: nth
            integer :: fib
        end function

        module subroutine show(i, fib)
            implicit none (type, external)
            integer, intent(in) :: i, fib
        end subroutine
    end interface
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

submodule(utils) utils_s
    implicit none (type, external)
contains
    module procedure fibonacci
        if (nth <= 2) then
            fib = 1
        else
            fib = fibonacci(nth-1) + fibonacci(nth-2)
        end if
    end procedure

    module procedure show
        print *, "The ", i, " number is: ", fib
    end procedure
end submodule