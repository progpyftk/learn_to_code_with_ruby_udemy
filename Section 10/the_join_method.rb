# the .join method actually is called by arrays, but it returns string objects
# it combines the array elements to make a string

my_arr = ["this", "is", "a", "sentence"]
p my_arr.join

# the argument is added between the elements
p my_arr.join('-')
p my_arr.join(' ')