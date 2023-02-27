#Reverse only vowels in the given string.
#Input: string = "communication"
#Expected output: "comminacituon"


def reversevowel(str)
	vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
	start = 0
	finish = str.length - 1
	while start < finish
	  if vowels.include?(str[start]) && vowels.include?(str[finish])
		  str[start], str[finish] = str[finish], str[start]
	    start=start+1
	    finish=finish-1
	  elsif vowels.include?(str[start])
		  finish -= 1
	  elsif vowels.include?(str[finish])
		  start += 1
	  else
		  start += 1
		  finish -= 1
	 end
	end
	puts str
  end
reversevowel("communication") 
