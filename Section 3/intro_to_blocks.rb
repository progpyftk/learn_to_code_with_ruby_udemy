# a block is not an object - it tells how the method should work
# notice block isn't a method, block is attached to a method
# a block means a "do - end" expression, or we can use the symbols of curly braces { }

# without blocks
5.times do
    puts "I wil get a job"
end

# using the block symbol, it will be yielded 5 times
p 5.times {puts "I will get a job"}

# prints the enumerator
p 5.times

# it is also possible to provide block variables
5.times do |x|
    puts "I will get a job"
    puts x
end

# variable with block symbols
5.times {|x| puts "I will get a job"; puts x}

# challeng use the times method to out the first ten multiples of 3 (3, 6, 9)
11.times {|count| puts count*3}