#Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
#Input: 42145 Output: 54421
#Input: 145263 Output: 654321
#Input: 123456789 Output: 987654321


def rearrangedescending(num)
    digits = num.to_s.split("").map(&:to_i)
    digits.sort! { |a, b| b <=> a }
    digits.join("").to_i
    puts digits.join.to_i
  end
  
rearrangedescending(42145)
rearrangedescending(145263)
rearrangedescending(123456789)
