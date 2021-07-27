# The any?() of enumerable is an inbuilt method in Ruby returns a boolean value 
# if any of the object in the enumerable satisfies the given condition, else it returns false.

# The function takes two types of parameters, one is the object and the block, while the 
# other is the pattern. 

# if ANY of them to be true, it will return true
p [1, 2, 5, 9, 10, 11].any? do |element|
    element.even?
end

p [1, 3, 5, 7, 10, 11].any? do |element|
    element.even?
end

# the all? method works the same, but it evaluates if ALL meet the pattern
p [1, 3, 5, 7, 10, 11].all? do |element|
    element.even?
end