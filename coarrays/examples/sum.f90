program sum
    implicit none
    integer :: a
    a = this_image()
    call co_sum(a)
    print *, a
end program
