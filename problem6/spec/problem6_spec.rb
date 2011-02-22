require File.expand_path(File.dirname(__FILE__) + '/../lib/problem6')


describe Problem6 do

  describe "sum of squares" do
    it "for range 1..5" do
      subject.sum_of_squares(1..5).should == 55
    end
    it "for range 1..10" do
      subject.sum_of_squares(1..10).should == 385
    end
  end

  describe "square of sum" do
    it "for range 1..5" do
      subject.square_of_sum(1..5).should == 225
    end
    it "for range 1..10" do
      subject.square_of_sum(1..10).should == 3025
    end
  end

  describe "Find the difference between square of sum and sum of square" do
    it "for range 1..5" do
      subject.solve(1..5).should == 170
    end
    it "for range 1..10" do
      subject.solve(1..10).should == 2640
    end
    it "for range 1..100" do
      subject.solve(1..100).should == 25164150
    end
  end

end

