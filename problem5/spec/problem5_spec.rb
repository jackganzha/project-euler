require File.expand_path(File.dirname(__FILE__) + '/../lib/factor')
require File.expand_path(File.dirname(__FILE__) + '/../lib/problem5')

require 'spec_helper'

describe Problem5 do

  describe "Get unique factors for range" do
    it "1..10 should get [2^3, 3^2, 5^1, 7^1]" do
      expected_factors = [Factor.new(2, 3), Factor.new(3, 2), Factor.new(5), Factor.new(7)]
      subject.unique_factors_for(1..10).should == expected_factors
    end
    it "1..20 should get [2^4, 3^2, 5^1, 7^1, 11^1, 13^1, 17^1, 19^1]" do
      expected_factors = [Factor.new(2, 4), Factor.new(3, 2), Factor.new(5), Factor.new(7), Factor.new(11), Factor.new(13), Factor.new(17), Factor.new(19)]
      subject.unique_factors_for(1..20).should == expected_factors
    end
  end

  describe "smallest positive number that is evenly divisible" do
    it "by 1..10 == 2520" do
      subject.smallest_number_divisible_by(1..10).should == 2520
    end
    it "by 1..20 == 232792560" do
      subject.smallest_number_divisible_by(1..20).should == 232792560
    end
    it "by 1..30 == 2329089562800" do
      subject.smallest_number_divisible_by(1..30).should == 2329089562800
    end
  end

end

