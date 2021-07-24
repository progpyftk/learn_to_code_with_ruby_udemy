# write a loop that gives a sum of the products of each index and its value
fives = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]

sum = 0
fives.each_with_index do |num, index|
    product = num * index
    sum += product
    p product
end