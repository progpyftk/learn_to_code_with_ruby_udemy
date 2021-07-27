fruits = ["apple", "orange", "grape", "Banana"]

p fruits.length
i = 0
until i >= fruits.length
    p fruits[i]
    i += 1
end

# good way to acess the last
fruits[fruits.length - 1]

# notice the [] is indeed a method - sugar sintax
p fruits.[](0)

# accessing a single array element using Array#fetch
names = ["Tom", "Cameron", "Bob"]
p names [2]
p names[100]
p names.fetch(2)
# the difference is that fetch returns an error
#p names.fetch(100) # but the second argument can be used to return that
p names.fetch(100, "Not found")
p names.fetch(10, ["John", "Lando"])

# extrating sequential elements
numbers = [1, 2, 3, 4, 5, 10, 12, 15, 17, 20]
p numbers[2, 5] # it returns 5 elements starting from position 2 ( 0, 1, 2)
p numbers[3,100]

# using range to access array elements, the numbers are the positions
p numbers[2..5]
p numbers[2..2]

# the .values_at
channels = ["CBS", "CNN", "FOX", "BBC", "ABC"]
p channels.values_at(0)
p channels.values_at(4)
p channels.values_at(0, 2, 4)
p channels.values_at(0, -1) # first and last
p channels.values_at(2, 2, 2, 0, 0, 0)

#values_at(*args) public
#Returns an array containing the elements in self corresponding to the given selector(s).
#The selectors may be either integer indices or ranges.

a = %w{ a b c d e f }
a.values_at(1, 3, 5)          # => ["b", "d", "f"]
a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]
a.values_at(-1, -2, -2, -7)   # => ["f", "e", "e", nil]
a.values_at(4..6, 3...6)      # => ["e", "f", nil, "d", "e", "f"]

# the slice method - identical to using to index with index and ranges
p numbers.slice(3)
p numbers.slice(100)
p numbers.slice(2, 4)
p numbers.slice(2..4)
p numbers.slice(2..5)