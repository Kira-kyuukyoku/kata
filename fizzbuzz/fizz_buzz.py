import unittest
class TestFizzBuzz(unittest.TestCase):
        def test_test(self):
                self.assertEqual(True, True)
        def test_test(self):
                self.assertEqual("fizz", fizz_buzz(3))
        def test_test(self):
                self.assertEqual("buzz", fizz_buzz(5))
        def test_test(self):
                self.assertEqual("buzz", fizz_buzz(10))
        def test_test(self):
                self.assertEqual("FizzBuzz", fizz_buzz(15))
        def test_test(self):
                self.assertEqual("FizzBuzz", fizz_buzz(30))
def fizz_buzz(number):
        if (number % 3 == 0 and number % 5 == 0):
                return "FizzBuzz"
        elif (number % 3 == 0):
                return "fizz"
        elif (number % 5 == 0):
                return "buzz"
        else:
                number
if __name__ == '__main__':
        unittest.main()