# When done, submit this entire file to the autograder.

# Part 1

def sum arr

   arr.reduce 0, :+
  # YOUR CODE HERE
end

def max_2_sum arr
sum(arr.sort.last(2))
  # YOUR CODE HERE
end

def sum_to_n? arr, n
if arr.empty?
    return false if n == 0
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == n
    end
  end

  return false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
    "Hello, " + name
end

def starts_with_consonant? s
!!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  return false if s.empty?
    s.each_char{ |c|
        return false if c != "1" and c != "0"}
    return true if s.to_i(2) % 4 == 0
    false # false in any other case

  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
