require File.expand_path(File.dirname(__FILE__) + '/../lib/factor')
require 'spec_helper'

describe Factor do

  describe "factor compare for the same base" do
    it "biggest expoent wins" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(2, 2)
      f2.should be > f1
    end
    it "equals expoent drives to equality" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(2, 1)
      f2.should be == f1
    end
  end

  describe "#to_i" do
    it "2^3 == 8" do
      Factor.new(2, 3).to_i.should == 8
    end
    it "2^1 == 2" do
      Factor.new(2).to_i.should == 2
    end
    it "2^0 == 1" do
      Factor.new(2, 0).to_i.should == 1
    end
  end

  describe "find prime factors of a number" do
    it "#factors_of 10 should be [2^1, 5^1]" do
      Factor.factors_of(10).should == [Factor.new(2), Factor.new(5)]
    end
    it "#factors_if 8  should be [2^3]" do
      Factor.factors_of(8).should == [Factor.new(2, 3)]
    end
    it "#factors_of 7  should be [7^1]" do
      Factor.factors_of(7).should == [Factor.new(7)]
    end
    it "#factors_of 2  should be [2^1]" do
      Factor.factors_of(2).should == [Factor.new(2)]
    end
  end

end

