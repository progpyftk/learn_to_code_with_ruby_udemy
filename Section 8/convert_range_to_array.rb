# one of disvantages of ranges is that we cant extract elements by the use of brackets

letters_range = "A".."Z"
p letters_range.first(letters_range.count)
puts letters_range

# converting to an array using to_a
letters_array = letters_range.to_a
p letters_range.class
p letters_array.class
p letters_array

# is_a? method
