# Basic Login Simulation
# This script simulates a simple login process by checking user credentials against predefined values.

PREDEFINED_USER = {
  username: "admin",
  password: "password123"
}

def login(username, password)
  if username == PREDEFINED_USER[:username] && password == PREDEFINED_USER[:password]
    return true
  else
    return false
  end
end

def validate_input(username, password)
  if username.empty? || password.empty?
    puts "Username and password cannot be empty."
    return false
  end
  true
end

def main
  puts "Welcome to the Login Simulation!"
  print "Enter username: "
  input_username = gets.chomp
  print "Enter password: "
  input_password = gets.chomp

  if validate_input(input_username, input_password) && login(input_username, input_password)
    puts "Login successful!"
  else
    puts "Login failed. Please try again."
  end
end

main