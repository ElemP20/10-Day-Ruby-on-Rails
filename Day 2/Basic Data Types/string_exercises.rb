def concatenate_example(string)
  # use concatenation to format the result to be "Classic <string>"
  puts "Classic " << string
end

def concatenate(string)
  # use concatenation to format the result to be "Hello <string>!"
  puts "Hello " << string << "!"
end

def substrings(word)
  # return the first 4 letters from the word using substrings
  puts word[0, 4]
end

def capitalize(word)
  # capitalize the first letter of the word
  puts word.capitalize
end

def uppercase(string)
  # uppercase all letters in the string
  puts string.upcase
end

def downcase(string)
  # downcase all letters in the string
  puts string.downcase
end

def empty_string(string)
  # return true if the string is empty
  puts string.empty?
end

def string_length(string)
  # return the length of the string
  puts string.length
end

def reverse(string)
  # return the same string, with all of its characters reversed
  puts string.reverse
end

def space_remover(string)
  # remove all the spaces in the string using gsub
  puts string.gsub(" ", "")
end

# Call the functions to test code
concatenate_example("String")
concatenate("World") 
substrings("Hello")
capitalize("hello")
uppercase("hello")
downcase("HELLO")
empty_string("")
string_length("Hello World")
reverse("Hello")
space_remover("H e l l o")
puts 11.odd?