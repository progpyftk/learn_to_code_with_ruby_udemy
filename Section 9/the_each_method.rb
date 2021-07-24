# the each method does is iterate over every single array element in order
# it does the iteration trhough a block

letters = ["a", "b", "c", "d"]

letters.each do |each_element|
    puts "the letter is #{each_element}"
end

letters.each { |each_element| puts "the letter is #{each_element}" }
letters.each { |each_letter| puts each_letter.capitalize}

evens = []
odds = []
fives = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
fives.each do |number|
    if number.even?
        evens << number
    elsif number.odd?
        odds << number
    end
end
p evens
p odds

fives.each do |x|
    x.even? ? evens << x : odds << x
end

fives.each { |x| x.even? ? evens << x : odds << x}
p evens
p odds

def even_or_odd(my_array)
    evens = []
    odds = []
    my_array.each { |x| x.even? ? evens << x : odds << x}
    return evens, odds
end
p even_or_odd([1,6,7,8,10,11,12,13])

# even within another each
letters = ["a", "b", "c", "d"]
numbers = [1, 2, 3, 4, 5]

letters.each do |letter|
    numbers.each do |number|
        puts "Combination letter: #{letter}  number: #{number}"
    end
end
puts ""
puts "---------"

letters.each { |letter| numbers.each {|number| puts "Combination letter: #{letter}  number: #{number}"}}

# each method with index method - the second block variable
colors = ["red", "blue", "green", "black", "yellow"]
colors.each_with_index do |color, index_pos|
    puts "Moving on to the next one the position is #{index_pos}"
    puts "The current color is #{color}"
end


fives = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
fives.each_with_index { |number, index| puts number * index}

