nums = 1..5 # inclusive
p nums
p nums.class
nums = 1...5 # exclusive
p nums
p nums.class

# range methods
p nums.first
p nums.last # take care, because it is a kind of bug. Even in the exclusive, it will tell you the last is 5

# take the 4 first numbers in an array
p nums.first(4)

# take the last - this is the best approach for last
p nums.last(1)

# we cant to this: puts 1..10.first(3) because rubys thinks we are sending message to integer 10
puts (1..10).first(3)

# alphabetical ranges
alphabet = "a".."z"
puts alphabet.first(5)
puts alphabet.first(5).class

alphabet = "A".."Z"
p alphabet.count
p alphabet
p alphabet.first(30)

# if we maje A..z ruby includes a lot of other characters
alphabet = "A".."z"
p alphabet
# notice that in the case of range of letter like here the size method does not work - returns nil, so we need to use range.count
p alphabet.size

p alphabet.first(30)
p alphabet.count

# The size method on a range
numbers = 143..769
p numbers.size

