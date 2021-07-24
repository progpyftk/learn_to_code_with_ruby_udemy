fruits = ["apple", "orange", "grape", "Banana"]

i = 0
while i < fruits.length
    puts fruits[i]
    i += 1
end

i = 0
until i == fruits.length
    puts fruits[i]
    i += 1
end

# the break keyword - used to stop loops or blocks
i = 0
while i < fruits.length
    puts fruits[i]
    if fruits[i] == "grape"
        puts "we stop here, bye"
        break
    end
    i += 1
end

# the next keyword - used to avoid the loop to be broken
numbers = [1,2,3,4,5,6, "Hello", 7,8,9, nil]
numbers.each do |num|
    unless num.is_a?(Integer) # if num is not an Integer
        next # it ignore the error
    else
        puts "Ok, this is a number: #{num}"
    end
end

        
    
 
