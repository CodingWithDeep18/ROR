class Cal
  a=true
  b=false
  @c=a and b
  @d= a && b
    def display
      print "value of and operator is #{@c}\n"
      print "value of && operator is #{@d}"
      print "conclusion:\n"   
    end
end

obj=Cal.new
obj.display
