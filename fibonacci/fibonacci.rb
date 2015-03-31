require "minitest/autorun"

class TestFibo < Minitest::Test

    def test_0_donne_1
        assert_equal 1, fibo(0)
    end

    def test_1_donne_1
        assert_equal 1, fibo(1)
    end

    def test_2_donne_2
        assert_equal 2, fibo(2)
    end

    def test_3_donne_3
        assert_equal 3, fibo(3)
    end

    def test_4_donne_5
        assert_equal 5, fibo(4)
    end

    def test_5_donne_8
        assert_equal 8, fibo(5)
    end

end


def fibo(chiffre)

    if chiffre == 0
        return 1
    elsif chiffre == 1
        return 1
    end

    a = 1
    b = 1
    c = 2
    i = 2

    while i < chiffre do
        a = b
        b = c
        c = a + b
        i = i +1
    end

    return c
end