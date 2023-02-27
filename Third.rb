elements = ['two', 'one', 'three']
print elements
hash = {'three' => 3, 'two' => 2, 'one' => 1}
print "\nHash_to_be_sorted = "
puts hash
puts elements.map{|key| [key, hash[key] ] }.to_h
	
