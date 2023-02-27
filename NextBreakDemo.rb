
#break keyword demo in ruby

i=1
while true
  puts i*3
  i+=1
  if i * 3 >= 21
  break 
  end
end

# Next keyword demo in ruby 
for i in 1..10
  if i==5
   next
  end
  puts i
end
