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
  if /[01]*/.match(s) != s
      return false #not a binary number
    else
      if /[01]*00/.match(s) == nil
        return false
      else return true
      end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
