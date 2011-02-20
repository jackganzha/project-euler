require File.expand_path(File.dirname(__FILE__) + '/../lib/problem3')
require 'spec_helper'

describe Problem3 do

  describe "Get prime factors of" do
    it "4 must be [2, 2]" do
      subject.factors_of(4).should == [2, 2]
    end
    it "5 must be just [5]" do
      subject.factors_of(5).should == [5]
    end
    it "16 must be [2, 2, 2, 2]" do
      subject.factors_of(16).should == [2, 2, 2, 2]
    end
    it "100 must be [2, 2, 5, 5]" do
      subject.factors_of(100).should == [2, 2, 5, 5]
    end
  end

  describe "biggest prime factor of" do
    it "13195 is 29" do
      subject.factors_of(13195).max.should == 29
    end
    it "404 is 101" do
      subject.factors_of(404).max.should == 101
    end
  end

  describe "Solve problem #3" do
    it "the largest prime factor of the number 600851475143" do
      subject.factors_of(600851475143).max.should == 6857
    end
  end

end

