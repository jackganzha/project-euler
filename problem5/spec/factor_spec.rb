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

end

