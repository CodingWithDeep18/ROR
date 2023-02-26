#Find the difference between the square of the sum and the sum of the squares of the first N natural numbers >> (1 + 2 + ... + N)² - (1² + 2² + ... + N²)
#Example, N = 5
#(1 + 2 + 3 + 4 + 5)² - (1² + 2² + 3² + 4² + 5²) = 170

puts "Enter the number: "
N = gets.chomp.to_i
start = 1
sum_of_the_squares = 0
square_of_the_sum = 0
while(start<=N)
	sum_of_the_squares = sum_of_the_squares + start*start
	square_of_the_sum = square_of_the_sum + start
	square = square_of_the_sum * square_of_the_sum
	start += 1
	
end
diff_number = square - sum_of_the_squares
puts diff_number



