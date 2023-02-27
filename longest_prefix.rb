#Write a function to find the longest common prefix string amongst an array of strings.
##Input: string = ["challenge","characteristic","champion"] 
#Expected output: "cha"

str = ["challenge","characteristic","champion"]

def longestprefix(str)
char = str[0]
prefixstr = ""
for i in 0...char.length
	if str.all?{|x| x[i] == char[i]}
     prefixstr = prefixstr + char[i]
  else
     break
  end 
end
puts "#{prefixstr}"
end

longestprefix(str)
