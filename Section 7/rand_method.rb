# generating a random number
# generate a float between 0 and 1
puts rand
puts rand.round(2)

# the argument says to method generate a integer number from zero to the argument
puts rand(100)

# the best way to use is
puts (rand * 100).to_i

# or using ranges
puts rand(1..100)