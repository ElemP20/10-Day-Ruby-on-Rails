# Simple Todo List
# This script allows users to add items to a todo list and view the current list.

todo_list = []

def display_todo_list(todo_list)
  puts "Current Todo List:"
  todo_list.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def add_todo_item(todo_list, item)
  todo_list << item
end

loop do
  display_todo_list(todo_list)

  puts "\nEnter a todo item (or type 'exit' to finish):"
  input = gets.chomp
  if input.downcase == 'exit'
    puts "Exiting the todo list application."
    break
  end
    
  add_todo_item(todo_list, input)
  puts "'#{input}' has been added to your todo list.\n\n"
end