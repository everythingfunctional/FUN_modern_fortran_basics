program ok_unit
    implicit none
    integer, parameter :: the_unit = 9
    call open_the_file
    call say_something
    call close_the_file
contains
    subroutine open_the_file
        open(file="my_file.txt", unit=the_unit)
    end subroutine
    subroutine say_something
        write(the_unit, *) "Something to say"
    end subroutine
    subroutine close_the_file
        close(the_unit)
    end subroutine
end program
