number = 5000
if number > 2500
    puts "Big number"
end

# modifiers will reduce the number of lines
# we dont need the end keyword
puts "Big number" if number > 2500 

verified = true
puts "Big number and verified" if number > 1000 && verified

x = 8
unless x > 10
    puts "x is not grater than 10"
end
puts "x is not grater than 10" unless x > 10

