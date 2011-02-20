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
      first, second = 1, 2
      numbers = [first, second]
      while(second < limit)
        tmp = second
        second = first + second
        first = tmp
        numbers << second if second < limit
      end
      numbers
    end

end

