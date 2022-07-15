# frozen_string_literal: true

# Custome enumerable functions
module Enumerable
  def my_each_with_index
    array = []
    i = 0
    while i < length
      array.push(self[i])
      yield(self[i], i)
      i += 1
    end
    array
  end

  def my_select
    array = []
    i = 0
    while i < length
      array.push(self[i]) if yield(self[i])
      i += 1
    end
    array
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    array = []
    i = 0
    while i < length
      array.push(self[i])
      yield(self[i])
      i += 1
    end
    array
  end
end
