phone = File.read("phone.txt")
#used to convert string to object
hash = eval(phone)
puts "1. Find phone number by name"
puts "2. Add new entry"
puts "3. Delete entry"
puts "4. Show all record"
puts "Enter Your Choice: "
choice = gets.chomp
  case choice
  when "1"
    print "Enter name: "
    name = gets.chomp
    puts name
   if hash.has_key?(name)
    puts "We have the name !!"
   end
    if hash.has_key?(name)
      puts "Phone number: #{hash[name]}"
    else
      puts "Please enter a valid name !! No record for this name "
    end
  when "4"
   puts "#{hash}"
  when "2"
    print "Enter name: "
    name = gets.chomp
    print "Enter phone number: "
    number = gets.chomp
    if hash.has_key?(name)
      puts "Name is already there"
    elsif hash.has_value?(number)
      puts "Number is already there"
    else
      hash[name] = number
      puts "successfully added the data"   
    end

  when "3"
    puts "1. Delete by name"
    puts "2. Delete by number"
    delete = gets.chomp
    case delete
    when "1"
      print "Enter name: "
      name = gets.chomp
      if hash.has_key?(name)
        hash.delete(name)
        puts "data deleted"  
      else
        puts "Please enter a valid name"
      end  
    when "2"
      print "Enter number: "
      number = gets.chomp
      if hash.has_value?(number)
        key = hash.key(number)
        hash.delete(key)
        puts "Deleted" 
      else
        print "Enter valid phone" 
  end
end
end

File.open("phone.txt", "w") do |f|
  f.write(hash.to_s)
end
