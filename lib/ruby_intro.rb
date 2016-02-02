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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
