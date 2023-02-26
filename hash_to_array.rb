#Convert a hash into an array. Nothing more, Nothing less.
#Input - {name: 'Jeremy', age: 24, role: 'Software Engineer'}
#Output - [["age", 24], ["name", "Jeremy"], ["role", "Software Engineer"]]


hash = {name: 'Jeremy', age: 24, role: 'Software Engineer'}

def hash2arr(hash)
    arr = []
    hash.each do |key, value|
        arr.push([key.to_s, value])
    end
  
    arr.insert(1,arr.delete_at(0))
      print arr
end

hash2arr(hash)
