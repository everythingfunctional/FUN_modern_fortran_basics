program main
  use iso_varying_string, only: put_line
  use fizzbuzz_m, only: fizzbuzz
  implicit none

  integer :: i

  do i = 1, 100
    call put_line(fizzbuzz(i))
  end do
end program main
