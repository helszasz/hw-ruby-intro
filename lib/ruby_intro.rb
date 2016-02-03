# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr == []
    return 0
  else
    sum_so_far = 0
    arr.each {|n| sum_so_far += n}
    return sum_so_far
  end
end

def max_2_sum arr
  if arr == []
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    while arr.length > 2  
      arr.shift
    end 
    return sum(arr)
  end
end

def sum_to_n? arr, n
  if arr == []
    return false
  elsif arr.length == 1
    return false
  else 
    return arr.permutation(2).any? {|x,y| x+y == n}
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s.downcase!
  char_array = s.each_char.to_a
  if char_array.empty?
    return false
  else
    first_char = char_array[0]
    if /[[:alpha:]]/.match(first_char) == nil
      return false
    elsif /[aeiou]/.match(first_char) == nil
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  arr = /[01]*00/.match(s)
  if (arr != nil && arr[0] == s) || s == "0"
    print "here1"
    return true
  else 
    print "here2"
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError.new("No ISBN given!")
    end
    if price <= 0
      raise ArgumentError.new("Price must be greater than 0!")
    end
    @isbn = isbn
    @price = price 
  end
  def price_as_string 
    #@price = @price.round(2)
    return sprintf('$%#.2f',@price)
  end
end
