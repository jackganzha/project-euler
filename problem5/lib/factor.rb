class Factor

  attr_accessor :base, :expoent

  def initialize(base, expoent)
    @base, @expoent = base, expoent
  end

  def same_base?(another_factor)
    return false if another_factor.nil?
    @base == another_factor.base
  end

  def == (another_factor)
    return false if another_factor.nil?
    same_base?(another_factor) && same_expoent?(another_factor)
  end

  def to_s
    "#{@base}^#{@expoent}"
  end

  private

    def same_expoent?(another_factor)
      @expoent == another_factor.expoent
    end

end

