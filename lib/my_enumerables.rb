# frozen_string_literal: true

# Custome enumerable functions
module Enumerable; end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    i = 0
    array = []
    while i < length
      
      # This line passes "returns the original array" test
      # array.push(self[i])
      
      # This line passes "executes the block for each element" test
      # array.push(yield(self[i]))
      i += 1
    end
    array
  end
end
