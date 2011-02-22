class Problem2

  def fibonacci(limit = 10, &filter)
    numbers = fibonacci_sequence_upto(limit)
    if block_given?
      return numbers.select {|n| yield(n) }
    else
      return numbers
    end
  end

  def fibonacci_sum(limit = 10, &filter)
    fibonacci(limit, &filter).inject(&:+)
  end

  private

    def fibonacci_sequence_upto(limit)
      i, numbers = 1, [1, 2]
      while((numbers[i - 1] + numbers[i]) < limit)
        numbers << numbers[i - 1] + numbers[i]
        i = i + 1
      end
      numbers
    end

end

