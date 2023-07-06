character(len=13) :: greeting
if (this_image() == 1) Greeting = "Hello, World!"
call co_broadcast(greeting, 1)
print *, greeting
end
