class Problem3
  def factors_of(number)
    factors = []
    possible_factor = 2
    while number > 1
      while number % possible_factor == 0
        factors << possible_factor
        number = number/possible_factor
      end
      possible_factor = possible_factor + 1
    end
    factors
  end
end

