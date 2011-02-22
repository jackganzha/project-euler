require File.expand_path(File.dirname(__FILE__) + '/../lib/problem2')

describe Problem2 do

  describe "get numbers in fibonacci sequence that are" do
    it "less than 10" do
      subject.fibonacci(10).should == [1, 2, 3, 5, 8]
    end
    it "less than 100" do
      subject.fibonacci(100).should == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    end
  end

  describe "get numbers in fibonacci sequence that are" do
    it "less than 10 and odd" do
      subject.fibonacci(10) { |n| n.odd? }.should == [1, 3, 5]
    end
    it "less than 10 and are even" do
      subject.fibonacci(10) { |n| n.even? }.should == [2, 8]
    end
  end

  describe "sum numbers in fibonacci sequence that are" do
    it "less than 10 should be equal 19" do
      subject.fibonacci_sum(10).should == 19
    end
    it "less than 100 should be equal 231" do
      subject.fibonacci_sum(100).should == 231
    end
    it "less than 10 and even, should be equal 10" do
      subject.fibonacci_sum(10) { |n| n.even? }.should == 10
    end
    it "less than 10 and odd should be equals 9" do
      subject.fibonacci_sum(10) { |n| n.odd? }.should == 9
    end
  end

  describe "Solve the problem" do
    describe "for the terms in the Fibonacci sequence whose values do not exceed four million" do
      it "sum of the even-valued terms == 4613732" do
        subject.fibonacci_sum(4_000_000) { |n| n.even? }.should == 4613732
      end
      it "sum of the odd-valued terms == 4613731" do
        subject.fibonacci_sum(4_000_000) { |n| n.odd? }.should == 4613731
      end
      it "sum of all terms == 9227463" do
        subject.fibonacci_sum(4_000_000).should == 9227463
      end
    end
  end
end

