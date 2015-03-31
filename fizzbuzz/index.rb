require 'minitest/autorun'
require './fizz_buzz'

class FizzBuzzTest < MiniTest::Unit::TestCase

  def test_1_donne_1
        assert_equal "1", fizz_buzz(1)
  end

  def test_2_donne_2
        assert_equal "2", fizz_buzz(2)
  end

  def test_3_donne_fizz
        assert_equal "fizz", fizz_buzz(3)
  end

  def test_6_donne_fizz
        assert_equal "fizz", fizz_buzz(6)
  end

  def test_5_donne_buzz
        assert_equal "buzz", fizz_buzz(5)
  end

  def test_15_donne_fizzbuzz
        assert_equal "fizzbuzz", fizz_buzz(15)
  end

end