program main
  use FUN, only: create_greeting
  use iso_varying_string, only: put_line
  implicit none

  call put_line(create_greeting("FUN"))
end program main
