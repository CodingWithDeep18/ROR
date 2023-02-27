a = "a"
b = "a"
#output was true as the content is same  
c=a.eql?b
puts  c
#output was false as object id was different
c=a.equal?b
puts c


a=:a
b=:a
c=a.eql?b
puts c
c=a.equal?b
puts c 
