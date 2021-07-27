def sum(*numbers)
    sum = 0
    numbers.each {|number| sum += number}
    sum
end

p sum(1,2,3,4,5,6)
p sum(1)
