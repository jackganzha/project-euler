class Problem5

  def smallest_number_divisible_by(range)
    unique_factors_for(range).collect { |factor| factor.to_i }.inject(&:*)
  end

  def unique_factors_for(range)
    group_to_unique_factors all_factors_for(range)
  end

  private

    def all_factors_for(range)
      range.collect { |n| Factor.factors_of(n) }.flatten!
    end

    def group_to_unique_factors(factors)
      factors.group_by { |factor| factor.base }.map { |base, factors| factors.max }
    end
end

