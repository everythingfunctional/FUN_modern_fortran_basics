character(len=13) :: greeting[*]
if (this_image() == 1) greeting = "Hello, World!"
sync all
if (this_image() /= 1) greeting = greeting[1]
print *, greeting
end
