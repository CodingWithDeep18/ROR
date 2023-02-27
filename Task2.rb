


puts "Enter the first number:"
n1 = gets.chomp.to_i

puts "Enter the second number:"
n2 = gets.chomp.to_i

puts "1. ADDITION"
puts "2. SUBTRACTION"
puts "3. MULTIPLICATION"
puts "4. DIVISION"

puts "Enter the operation: "
operation = gets.chomp

addition = Proc.new { |a, b| a + b }
subtraction = Proc.new { |a, b| a - b }
multiplication = Proc.new { |a, b| a * b }
division = Proc.new { |a, b| a / b }

case operation
when "1"
  result = addition.call(n1, n2)
when "2"
  result = subtraction.call(n1, n2)
when "3"
  result = multiplication.call(n1, n2)
when "4"
  result = division.call(n1, n2)
else
  puts "You provide wrong input !! Please provide valid input"
  exit
end

puts "Result is: #{result}"

