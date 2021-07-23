# using brackets []
my_array = []
numbers = [1, 2, 3, 4 , 5]

nested_array = ["Hello", "World", numbers]
p nested_array

# using %w - it is used to create an array of strings - delimeted by spaces
names = %w[I am Lorenzo and this is my new array of strings]
p names.class
p names

# using the #new method
numbers = Array.new
p numbers.class
p numbers
# the argument is the array's size, that will be completed with nil by default
numbers = Array.new(10)
p numbers.class
p numbers

# the second argument is the what will complete the array
numbers = Array.new(10, "Hello")
p numbers.class
p numbers

