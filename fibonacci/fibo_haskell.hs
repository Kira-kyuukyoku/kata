import Test.HUnit

main = runTestTT (test [fibonacci 1 ~=? 1,
                        fibonacci 2 ~=? 1
                        ])


fibonacci 1 = 1
fibonacci 2 = 1
fibonacci 3 = 2

fibonacci (n) = fibonacci(n-2) + fibonacci (n-1)