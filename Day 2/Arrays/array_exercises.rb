def nil_array(number)
  # return an array containing `nil` the given number of times

  print "#{Array.new(number)}\n"
end

def first_element(array)
  # return the first element of the array
  
  puts array[0]
end

def third_element(array)
  # return the third element of the array
  
  puts array[2]
end

def last_three_elements(array)
  # return the last 3 elements of the array
  
  print "#{array.pop(3)}\n"
end

def add_element(array)
  # add an element (of any value) to the array
  
  print "#{array.push(4)}\n"
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  array.pop

  # Step 2: return the array (because Step 1 returns the value of the element removed)
  print "#{array}\n"
end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements
  array.shift(3)

  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  print "#{array}\n"
end

def array_concatenation(original, additional)
  # return an array adding the original and additional array together

  print "#{original + additional}\n"
end

def array_difference(original, comparison)
  # return an array of elements from the original array that are not in the comparison array

  print "#{original - comparison}\n"
end

def empty_array?(array)
  # return true if the array is empty

  print "#{array.empty?}\n"
end

def reverse(array)
  # return the reverse of the array

  print "#{array.reverse}\n"
end

def array_length(array)
  # return the length of the array

  print "#{array.length}\n"
end

def include?(array, value)
  # return true if the array includes the value

  print "#{array.include?(value)}\n"
end

def join(array, separator)
  # return the result of joining the array with the separator

  print "#{array.join(separator)}\n"
end


# Calling the functions for demonstration purposes
nil_array(5)
first_element([1, 2, 3])
third_element([1, 2, 3, 4, 5])
last_three_elements([1, 2, 3, 4, 5])
add_element([1, 2, 3])
remove_last_element([1, 2, 3])
remove_first_three_elements([1, 2, 3, 4, 5])
array_concatenation([1, 2], [3, 4])
array_difference([1, 2, 3], [2])
empty_array?([])
reverse([1, 2, 3])
array_length([1, 2, 3])
include?([1, 2, 3], 2)
join(['a', 'b', 'c'], '-')