! Generated by cart. DO NOT EDIT
program main
    implicit none

    if (.not.run()) stop 1
contains
    function run() result(passed)
        use fizzbuzz_test, only: &
                fizzbuzz_fizzbuzz => &
                    test_fizzbuzz
        use veggies, only: test_item_t, test_that, run_tests



        logical :: passed

        type(test_item_t) :: tests
        type(test_item_t) :: individual_tests(1)

        individual_tests(1) = fizzbuzz_fizzbuzz()
        tests = test_that(individual_tests)


        passed = run_tests(tests)

    end function
end program
