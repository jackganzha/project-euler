class Problem1
  def solve(n)
    (1...n).select { |n| n % 3 == 0 || n % 5 == 0 }.inject(&:+)
  end
end

