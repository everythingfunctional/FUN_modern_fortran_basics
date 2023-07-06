program primes_and_squares
    implicit none
    integer :: up_to
    integer, allocatable :: primes(:), squares(:)

    print *, "Calculate primes less than?"
    read(*,*) up_to
    call find_primes(up_to, primes)
    call calc_squares(primes, squares)
    call print_corresponding(primes, squares)
contains
    subroutine find_primes(up_to, primes)
        integer, intent(in) :: up_to
        integer, intent(out), allocatable :: primes(:)

        logical, allocatable :: is_prime(:)
        integer :: next_prime, next_multiple, i

        allocate(is_prime(2:up_to), source=.true.)
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
        primes = pack([(i, i = 2,up_to)], is_prime)
    end subroutine

    subroutine calc_squares(primes, squares)
        integer, intent(in) :: primes(:)
        integer, intent(out), allocatable :: squares(:)

        squares = primes**2
    end subroutine

    subroutine print_corresponding(primes, squares)
        integer, intent(in) :: primes(:)
        integer, intent(in) :: squares(:)

        integer :: i

        print *, "There are ", size(primes), " primes"
        do i = 1, size(primes)
            print *, primes(i), squares(i)
        end do
    end subroutine
end program
