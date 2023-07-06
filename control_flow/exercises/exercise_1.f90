program eratosthenes
    implicit none

    integer :: up_to
    integer, allocatable :: vals(:)
    logical, allocatable :: is_one(:)
    integer :: next_one, next_multiple, i

    print *, "Find up to?"
    read(*, *) up_to

    allocate(is_one(2:up_to), source = .true.)
    next_one = 2

    1 if (next_one > sqrt(real(up_to))) goto 6
    next_multiple = next_one*2

    2 if (next_multiple > up_to) goto 3
    is_one(next_multiple) = .false.
    next_multiple = next_multiple + next_one
    goto 2

    3 next_one = next_one + 1
    4 if (is_one(next_one)) goto 5
    next_one = next_one + 1
    goto 4

    5 goto 1

    6 vals = pack([(i, i = 2, up_to)], is_one)

    i = 1
    7 print *, vals(i)
    if (i >= size(vals)) goto 8
    i = i + 1
    goto 7
    8 stop
end program
