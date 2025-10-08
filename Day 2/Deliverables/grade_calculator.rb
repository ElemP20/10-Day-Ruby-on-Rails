# Calculate the grade based on the score
# This script prompts the user to enter a score and then determines the corresponding letter grade.

print "Enter the score (0-100): "
score = gets.chomp.to_i

def evaluate_score(score)
  if score < 0 || score > 100
    return nil
  elsif score >= 90
    return "A"
  elsif score >= 80
    return "B"
  elsif score >= 70
    return "C"
  elsif score >= 60
    return "D"
  else
    return "F"
  end
end

puts "Your grade is: #{evaluate_score(score)}."