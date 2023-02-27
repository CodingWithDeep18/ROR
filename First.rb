array = File.read("input.txt").scan(/\d+/).map(&:to_i)
counts = array.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
copy = counts.select { |num, count| count > 1 }
not_copy = counts.select { |num, count| count == 1 }
file=File.open("output.txt", "w")
  file.write(not_copy.to_s)

puts copy.to_s
