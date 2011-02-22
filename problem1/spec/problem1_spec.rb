require File.expand_path(File.dirname(__FILE__) + '/../lib/problem1')

describe Problem1 do

  describe "get sum of all multiples of 3 and 5 that are" do
    it "less than 10: should return 23" do
      subject.solve(10).should == 23
    end
    it "less than 100: should return 2318" do
      subject.solve(100).should == 2318
    end
    it "less than 1000: should return 233168" do
      subject.solve(1000).should == 233168
    end
  end
end

