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

  def my_all?
    is_true = true
    i = 0
    while i < length
      is_true = false unless yield(self[i])
      i += 1
    end
    is_true
  end

  def my_any?
    is_true = false
    i = 0
    while i < length
      is_true = true if yield(self[i])
      i += 1
    end
    is_true
  end

  def my_none?
    is_true = true
    i = 0
    while i < length
      is_true = false if yield(self[i])
      i += 1
    end
    is_true
  end

  def my_count
    count = 0
    i = 0
    while i < length
      if block_given?
        count += 1 if yield(self[i])
      else
        count += 1
      end
      i += 1
    end
    count
  end

  def my_map
    array = []
    i = 0
    while i < length
      array.push(yield(self[i]))
      i += 1
    end
    array
  end

  def my_inject(initial)
    output = initial
    i = 0
    while i < length
      output = yield(output, self[i])
      i += 1
    end
    output
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
