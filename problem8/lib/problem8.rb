class Problem8

  def to_consecutive_digits(string, size = 5)
    top = string.size - size
    entries = []
    (0..top).each do |index|
      entry = string[index, size]
      entries << entry unless entry.include?('0')
    end
    return entries
  end

  def greatest_product_of_consecutive_digits(string, size = 5)
    products = to_consecutive_digits(string, size).collect do |entry|
      product = 1
      entry.each_char { |d| product = product * d.to_i }
      product
    end
    products.max
  end
end

