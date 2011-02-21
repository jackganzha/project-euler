class Factor
  include Comparable

  attr_accessor :base, :expoent

  def initialize(base, expoent = 1)
    @base, @expoent = base, expoent
  end

  def same_base?(another_factor)
    return false if another_factor.nil?
    @base == another_factor.base
  end

  def ==(another_factor)
    return false if another_factor.nil?
    same_base?(another_factor) && same_expoent?(another_factor)
  end

  def <=>(another_factor)
    @expoent <=> another_factor.expoent
  end

  def to_i
    i = 1
    @expoent.times { i = i * base }
    return i
  end

  def to_s
    "#{@base}^#{@expoent}"
  end

  def self.factors_of(number)
    group_as_factors_objects plain_factors_for(number)
  end

  private

    def same_expoent?(another_factor)
      @expoent == another_factor.expoent
    end

    def self.plain_factors_for(number)
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

    def self.group_as_factors_objects(factors)
      factors.group_by { |n| n }.map { |base, expoent| Factor.new(base, expoent.length) }
    end

end

