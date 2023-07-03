module geometry
    implicit none

    type :: point
        real :: x, y, z
    end type

    type :: line_segment
        type(point) :: p1, p2
    end type

    type :: polygon
        type(line_segment), allocatable :: edges(:)
    end type

    type :: solid
        type(polygon), allocatable :: faces(:)
    end type
end module
