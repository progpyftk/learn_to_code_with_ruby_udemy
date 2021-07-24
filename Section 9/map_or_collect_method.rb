# methods map and collect are exactly the same, we will use map

fives = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
squares = []
fives.each { |number| squares << number ** 2}

# but instead of doing this to create a new one array "squares" we can use map
# it returns the block result to the new array following the indexes
squares = fives.map { |number| number ** 2}
p squares

# another example
temperatures_far = [105, 45, 40, -2, 18]
celsius = temperatures_far.map do |temp|
    (temp - 32.0) * (5.0 / 9.0)
end
p celsius

# notice if we use puts in the block!
temperatures_far = [105, 45, 40, -2, 18]
celsius = temperatures_far.map do |temp|
   puts (temp - 32.0) * (5.0 / 9.0)
end
p celsius # >> [nil, nil, nil .... nil]