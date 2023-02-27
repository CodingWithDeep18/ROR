#Given an array of numbers, remove the duplicates such that each unique element appears only once.
#Input: numbers = [0,0,1,1,1,2,2,3,3,4]
#Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]

def uniquenumbers(array)
    uniquearray = []
    duplicatearray = []
  
    array.each do |element|
      
      if uniquearray.include?(element)
        duplicatearray << nil
      else
        uniquearray << element
      end
    end

    uniquearray.concat(duplicatearray)
    print uniquearray
end
array = [0,0,1,1,1,2,2,3,3,4]
uniquenumbers(array)
