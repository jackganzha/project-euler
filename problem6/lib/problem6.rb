class Problem6

  def sum_of_squares(range)
    range.collect { |n| n * n }.inject(&:+)
  end

  def square_of_sum(range)
    sum = range.inject(&:+)
    sum * sum
  end

  def solve(range)
    square_of_sum(range) - sum_of_squares(range)
  end

end

