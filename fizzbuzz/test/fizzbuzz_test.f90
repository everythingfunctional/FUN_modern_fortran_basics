module fizzbuzz_test
    use fizzbuzz_m, only: fizzbuzz
    use veggies, only: result_t, test_item_t, assert_equals, describe, it

    implicit none
    private
    public :: test_fizzbuzz
contains
    function test_fizzbuzz() result(tests)
        type(test_item_t) :: tests

        tests = describe( &
                "fizzbuzz", &
                [ it("returns the numeral string for non-divisible by 3 or 5", check_numeral) &
                , it("returns 'fizz' for numbers divisible by 3", check_three) &
                , it("returns 'buzz' for numbers divisible by 5", check_five) &
                , it("returns 'fizzbuzz' for numbers divisible by 3 and 5", check_fifteen) &
                ])
    end function

    function check_numeral() result(result_)
        type(result_t) :: result_

        result_ = &
            assert_equals("1", fizzbuzz(1)) &
            .and.assert_equals("2", fizzbuzz(2)) &
            .and.assert_equals("4", fizzbuzz(4))
    end function

    function check_three() result(result_)
        type(result_t) :: result_

        result_ = &
            assert_equals("fizz", fizzbuzz(3)) &
            .and.assert_equals("fizz", fizzbuzz(6))
    end function

    function check_five() result(result_)
        type(result_t) :: result_

        result_ = &
            assert_equals("buzz", fizzbuzz(5)) &
            .and.assert_equals("buzz", fizzbuzz(10))
    end function

    function check_fifteen() result(result_)
        type(result_t) :: result_

        result_ = &
            assert_equals("fizzbuzz", fizzbuzz(15)) &
            .and.assert_equals("fizzbuzz", fizzbuzz(30))
    end function
end module