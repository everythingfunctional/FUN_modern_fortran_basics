program sync
    implicit none
    character(len=13) :: greeting[*]
    if (this_image() == num_images()) then
        greeting = "Hello, World!"
    else
        greeting = greeting[this_image()+1]
    end if
    print *, greeting
end program
