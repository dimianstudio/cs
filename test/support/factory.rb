module Factory
  class NumericArray
    def initialize(n)
      @value = (0...n).to_a.shuffle
    end

    def unsorted
      @value
    end

    def sorted
      @value.sort
    end
  end

  def array(n)
    NumericArray.new(n)
  end

  module_function :array
end
