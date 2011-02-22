class Problem7

  def find_prime_at(amount = 100)
    last_prime = 2

    number, count, incc = 3, 2, 2
    while(count <= amount) do
      (last_prime, count = number, count + 1) if is_prime?(number)
      number = number + incc
    end

    last_prime
  end

  def is_prime?(number)
    return true if number == 2
    return false if number.even?

    top = Math.sqrt(number).to_i + 1
    tested, incc = 3, 2
    while(tested <= top) do
      return false if number % tested == 0
      tested = tested + incc
    end

    return true
  end

end

