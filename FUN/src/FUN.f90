module FUN
  use iso_varying_string, only: varying_string, assignment(=)

  implicit none
  private

  public :: say_hello, create_greeting
contains
  subroutine say_hello
    print *, "Hello, FUN!"
  end subroutine say_hello

  function create_greeting(name) result(greeting)
    character(len=*), intent(in) :: name
    type(varying_string) :: greeting

    greeting = "Hello, " // name // "!"
  end function
end module FUN
