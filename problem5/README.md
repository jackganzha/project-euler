# Problem 5 description

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

[Project Euler: Problem #5](http://projecteuler.net/index.php?section=problems&id=5)

# About the solution

Of course I can solve this problem using a brute force approach, but it will not be efficient (or fun). So, I decide to try a mathematical approach instead of the brute force one. The solution is based on finding the prime factors for each numbers within the range. Let me explain using the example given in the problem description:

For the range [1..10], the prime factors for each number are:

    10 => 2, 5
    9  => 3, 3
    8  => 2, 2, 2
    7  => 7
    6  => 2, 3
    5  => 5
    4  => 2, 2
    3  => 3
    2  => 2

Let's write it using a expoent representation:

    10 => 2¹, 5¹
    9  => 3²
    8  => 2³
    7  => 7¹
    6  => 2¹, 3¹
    5  => 5¹
    4  => 2²
    3  => 3¹
    2  => 2¹

If we multiply all the prime factors here, we will for sure get a number that is evenly divisible for all the numbers in the range 1..10. But, because we want the smallest number (not any one), we must use only the unique factors with the biggest expoent. Per instance, if we have both 2¹ and 2³, we can use just 2³, because any number that is evenly divisible per 2³ is also divisible per 2¹.

So, we can reduce the factors to:

    2³, 3², 5¹, 7¹

Then, my approach will be find the unique prime factors for a given range. :-)

# How to run

You will need:

 * Ruby 1.8.x or 1.9.x - you can install using [RVM](http://rvm.beginrescueend.com/)
 * Bundler - <http://gembundler.com/>

Then, in the problem directory, type:

    >> bundle install
    >> rake

TADA! That is it.

