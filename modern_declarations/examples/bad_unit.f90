program bad_unit
    implicit none
    call open_the_file
    call say_something
    call close_the_file
contains
    subroutine open_the_file
        open(file="my_file.txt", unit=9)
    end subroutine
    subroutine say_something
        write(9, *) "Something to say"
    end subroutine
    subroutine close_the_file
        close(9)
    end subroutine
end program
