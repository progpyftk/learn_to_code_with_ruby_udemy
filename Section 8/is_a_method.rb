# the method checks the class and return true or false
# it is useful is situation like this

my_array = 5
if my_array.is_a?(Array)
    my_array.each { |e| puts e }
else
    puts "Not an array"
end

# important: in the very top of Ruby in the heritance top, are:
# BasicObject
#     Object
# The code below show the trick we must avoid. The if evaluation will be true
my_array = 5
if my_array.is_a?(Object)
    my_array.each { |e| puts e }
else
    puts "Not an array"
end
