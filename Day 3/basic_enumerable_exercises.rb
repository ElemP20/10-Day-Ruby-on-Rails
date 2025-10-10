def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  
  inventory_list.each do |item, value|
    puts "#{item}, quantity: #{value}"
  end
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  
  guesses.each_with_index do |item, index|
    puts "Guess #{index + 1} is #{item}"
  end
end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  
  numbers.map do |number|
    number.abs
  end
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  
  inventory_list.select do |item, value|
    value < 4
  end
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  
  word_list.reduce({}) do |accumulator, word|
    accumulator[word] = word.length
    accumulator
  end
end

# Calling the methods to verify they work
display_current_inventory({"apples" => 10, "bananas" => 20, "pears" => 30})
display_guess_order(["sea otter", "puffer fish", "angelfish", "clownfish", "blue tang"])
p find_absolute_values([-5, -6, 3, 2, -1, 0, 4, -7, 8])
p find_low_inventory({"apples" => 10, "bananas" => 3, "pears" => 30, "peaches" => 2, "grapes" => 4})
p find_word_lengths(["apple", "banana", "pear", "peach", "grape"])