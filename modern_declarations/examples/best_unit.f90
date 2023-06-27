program bad_unit
    implicit none
    integer :: the_unit
    call open_the_file(the_unit)
    call say_something(the_unit)
    call close_the_file(the_unit)
contains
    subroutine open_the_file(the_unit)
        integer, intent(out) :: the_unit
        open(file="my_file.txt", newunit=the_unit)
    end subroutine
    subroutine say_something(the_unit)
        integer, intent(in) :: the_unit
        write(the_unit, *) "Something to say"
    end subroutine
    subroutine close_the_file(the_unit)
        integer, intent(in) :: the_unit
        close(the_unit)
    end subroutine
end program
