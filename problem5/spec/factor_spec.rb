require File.expand_path(File.dirname(__FILE__) + '/../lib/factor')
require 'spec_helper'

describe Factor do

  describe "true for #same_base?" do
    it "when factors have the same base" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(2, 1)
      f1.same_base?(f2).should == true
    end
    it "even when factors have the same base but different expoent" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(2, 2)
      f1.same_base?(f2).should == true
    end
  end

  describe "false for #same_base" do
    it "when factors do not have the same base" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(3, 1)
      f1.same_base?(f2).should == false
    end
    it "when compared factor is nil" do
      Factor.new(2, 1).same_base?(nil).should == false
    end
  end

  describe "factors equality" do
    it "equals when have the same base and same expoent" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(2, 1)
      f1.should == f2
    end
    it "not equals when base differs" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(3, 1)
      f1.should_not == f2
    end
    it "not equals when expoent differs" do
      f1 = Factor.new(2, 1)
      f2 = Factor.new(2, 2)
      f1.should_not == f2
    end
    it "not equals when another factor is nil" do
      Factor.new(2, 1).should_not == nil
    end
  end

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

