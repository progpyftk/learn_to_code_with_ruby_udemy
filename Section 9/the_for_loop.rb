# in other languages the for loop is the most used, but not in Ruby
# the each method is the most used in Ruby, because it is safier
# the each method creates a temporary variable

numbers = [1,2,3,4,5,6,7,8]

numbers.each { |xvar| puts xvar}
#  p xvar - this wont work because there is no xvar in the global scope

for num in numbers
    puts num
end

# but now, if we try to use num, we can!!
puts num


