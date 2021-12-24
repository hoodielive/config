module Mathematics
  class Factorial
    attr_reader :number

    def initialize(number)
      @number = number
    end

    def calculate
      (1..number).inject(:*)
    end
  end
end

