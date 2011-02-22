require File.expand_path(File.dirname(__FILE__) + '/../lib/problem4')

describe Problem4 do
  describe "Testing if a number is a palindromic number" do
    it "9900 is not" do
      subject.is_palindromic?(9900).should == false
    end
    it "9009 is a palindromic" do
      subject.is_palindromic?(9009).should == true
    end
    it "9 is a palindromic" do
      subject.is_palindromic?(9).should == true
    end
  end
  describe "Find palindromic from" do
    it "multiplying two digit numbers" do
      subject.biggest_palindromic(10..99).should == 9009
    end
    it "multiplying three digit numbers" do
      subject.biggest_palindromic(100..999).should == 906609
    end
  end
end

