require "spec_helper.rb"
module FibonacciSpec

  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end

    it "should return the fibinacci sequence in iterative mode" do
      @answer.fib(10, :iterative).should == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    end

    it "should return the fibinacci sequence in matrix mode" do
      @answer.fib(10, :matrix).should == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    end

    it "should return the fibinacci sequence in recursive mode" do
      @answer.fib(10).should == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    end

    it "should return the correct fibonacci number in explicit mode" do
      @answer.fib(5).should == 5
      @answer.fib(10).should == 55
      @answer.fib(12).should == 144
    end
  end


end
