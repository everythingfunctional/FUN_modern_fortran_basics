program primes_and_squares
    implicit none
    integer :: up_to, primes(100), squares(100), num_primes

    print *, "Calculate primes less than?"
    read(*,*) up_to
    call find_primes(up_to, num_primes, primes)
    call calc_squares(num_primes, primes, squares)
    call print_corresponding(num_primes, primes, squares)
contains
    subroutine find_primes(up_to, num_primes, primes)
        integer, intent(in) :: up_to
        integer, intent(out) :: num_primes
        integer, intent(out) :: primes(*)

        logical :: is_prime(2:up_to)
        integer :: next_prime, next_multiple, i

        is_prime = .true.
        next_prime = 2
        do while (next_prime <= sqrt(real(up_to)))
            next_multiple = next_prime*2
            do while (next_multiple <= up_to)
                is_prime(next_multiple) = .false.
                next_multiple = next_multiple + next_prime
            end do
            next_prime = next_prime + 1
            do while (.not.is_prime(next_prime))
                next_prime = next_prime + 1
            end do
        end do
        num_primes = count(is_prime)
        primes(1:num_primes) = pack([(i, i = 2,up_to)], is_prime)
    end subroutine

    subroutine calc_squares(num_primes, primes, squares)
        integer, intent(in) :: num_primes
        integer, intent(in) :: primes(num_primes)
        integer, intent(out) :: squares(num_primes)

        squares = primes**2
    end subroutine

    subroutine print_corresponding(num_primes, primes, squares)
        integer, intent(in) :: num_primes
        integer, intent(in) :: primes(num_primes)
        integer, intent(in) :: squares(num_primes)

        integer :: i

        print *, "There are ", num_primes, " primes"
        do i = 1, num_primes
            print *, primes(i), squares(i)
        end do
    end subroutine
end program
