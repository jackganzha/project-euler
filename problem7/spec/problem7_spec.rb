require File.expand_path(File.dirname(__FILE__) + '/../lib/problem7')

describe Problem7 do

  describe "Test prime numbers" do
    it "2 is a prime number" do
      subject.is_prime?(2).should be_true
    end
    it "4 is not a prime number" do
      subject.is_prime?(4).should be_false
    end
    it "13 is a prime number" do
      subject.is_prime?(13).should be_true
    end
    it "169 is not a prime number" do
      subject.is_prime?(169).should be_false
    end
    it "10201 is not a prime number" do
      subject.is_prime?(10201).should be_false
    end
  end

  describe "Find the nth prime number" do
    it "2nd prime number is 3" do
      subject.find_prime_at(2).should == 3
    end
    it "1st prime number is 2" do
      subject.find_prime_at(1).should == 2
    end
    it "6th prime is 13" do
      subject.find_prime_at(6).should == 13
    end
    it "10001st prime number is 104743" do
      subject.find_prime_at(10001).should == 104743
    end
  end
end

