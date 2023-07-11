module greeting_test
    use veggies, only: result_t, test_item_t, assert_equals, describe, it
    use FUN, only: create_greeting

    implicit none
    private
    public :: test_greeting
contains
    function test_greeting() result(tests)
        type(test_item_t) :: tests

        tests = describe( &
            "create_greeting", &
            [ it("says hello", check_greeting) &
            ])
    end function

    function check_greeting() result(result_)
        type(result_t) :: result_

        result_ = assert_equals("Hello, World!", create_greeting("World"))
    end function
end module