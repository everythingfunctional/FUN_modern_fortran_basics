module fizzbuzz_m
  use iso_varying_string, only: varying_string, assignment(=)
  use strff, only: to_string

  implicit none
  private
  public :: fizzbuzz
contains
  function fizzbuzz(num)
    integer, intent(in) :: num
    type(varying_string) :: fizzbuzz

    if (mod(num, 15) == 0) then
      fizzbuzz = "fizzbuzz"
    elseif (mod(num, 5) == 0) then
      fizzbuzz = "buzz"
    elseif (mod(num, 3) == 0) then
      fizzbuzz = "fizz"
    else
      fizzbuzz = to_string(num)
    end if
  end function
end module
