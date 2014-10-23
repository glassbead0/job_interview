require 'matrix'
module JobInterview
  module Fibonacci

    ##
    # args should be the strategy to be used (one of :iterative, :recursive)
    # Defaults to recursive
    #
    def fib(n, *args)
      if args && args.include?(:iterative)
        iterative_fib(n)
      elsif args && args.include?(:matrix)
        matrix_fib(n)
      elsif args && args.include?(:explicit)
        explicit_fib(n)
      else
        ## TODO: make this efficient
        return Array.new(n) {|i| recursive_fib(i + 1) }

      end

    end

   private
   def recursive_fib(n)
      return n if (0..1).include? n
      recursive_fib(n-1) + recursive_fib(n-2)
   end

    def iterative_fib(n)
      result = [1, 1]

      (n - 2) .times do |i|
        result <<  result[-1] + result[-2]
      end

      return result
    end
    
    def matrix_fib(n)
      1.upto(n).map do |i|
        fibonacci_matrix = Matrix[[1,1],[1,0]]
        (fibonacci_matrix**(i-1)) [0,0]
      end
    end

    Phi = 1.6180339887498948482
    def explicit_fib(n)
      ((Phi**n - (-Phi)**(-n))/Math.sqrt(5)).round
    end

  end
end
