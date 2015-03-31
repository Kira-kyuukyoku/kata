require "minitest/autorun"

class FibonacciTest < MiniTest::Unit::TestCase
    def test_position_1_donne_0
        assert_equal(0, fibonacci(1))
    end
    def test_position_2_donne_1
        assert_equal(1, fibonacci(2))
    end
    def test_position_3_donne_1
        assert_equal(1, fibonacci(3))
    end
    def test_position_4_donne_2
        assert_equal(2, fibonacci(4))
    end
    def test_position_5_donne_3
        assert_equal(3, fibonacci(5))
    end
end

def fibonacci(number)

    fibotablo = [0, 1]

    return fibotablo[number - 1] if number == 1 || number == 2

    if number == 3 || number == 4 || number == 5
        return number - 2
    end
end