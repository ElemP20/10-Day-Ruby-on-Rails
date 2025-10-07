def add(a, b)
  # return the result of adding a and b
  puts a + b
end

def subtract(a, b)
  # return the result of subtracting b from a
  puts a - b
end

def multiply(a, b)
  # return the result of multiplying a times b
  puts (a * b)
end

def divide(a, b)
  # return the result of dividing a by b
  puts a / b
end

def remainder(a, b)
  # return the remainder of dividing a by b using the modulo operator
  puts a % b
end

def float_division(a, b)
  # return the result of dividing a by b as a float, rather than an integer
  puts a.to_f / b.to_f
end

def string_to_number(string)
  # return the result of converting a string into an integer
  puts string.to_i
end

def even?(number)
  # return true if the number is even (hint: use integer's even? method)
  puts number.even?
end

def odd?(number)
  # return true if the number is odd (hint: use integer's odd? method)
  puts number.odd?
end

# Call the functions
add(1, 2)
subtract(2, 1)
multiply(2, 2)
divide(4, 2)
remainder(5, 2)
float_division(5, 2)
string_to_number("123")
even?(10)
odd?(11)



