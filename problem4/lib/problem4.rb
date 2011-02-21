class Problem4

  def is_palindromic?(number)
    number_string = number.to_s
    number_string == number_string.reverse
  end

  def biggest_palindromic(range)
    max = -1
    range.each do |first|
      range.each do |second|
        current = first * second
        max = current if current > max && is_palindromic?(current)
      end
    end
    max
  end

end

