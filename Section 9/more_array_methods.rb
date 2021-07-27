# reverse method and its bang methods that mutate the original array
fives = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
p fives.reverse
p fives.reverse!
p fives

# the sort method and its bang method - also works for strings (Uppercase letters come first than lowercase)
numbers = [4, 6, 1, 2, 20, 154, 12, 7, 96, 12]
p numbers.sort
p numbers.sort!

# the concat method - used to concat one arrai in another
# it modifies the original array, it is a bang method already
p [1, 2, 3] + [4, 5, 6]
p [1, 2, 3].concat([4, 5, 6])
fives.concat(numbers)
p fives

# building our own concat method - it changes the original array
def custom_concat(arr1, arr2)
    arr2.each do |each|
        arr1.push(each) # or arr1 << each
    end
    arr1
end
p fives
p numbers
p custom_concat(fives, numbers)

# the max and min methods - also works for string arrays
p fives.max
p fives.min

def custom_max(arr)
    max = arr[0]
    arr.each { |each| max = each if each > max } 
    max
end
p custom_max(fives)

# the include? method on arrays
p fives.include?(25)
p fives.include?(154)
p fives.include?(40)
p fives.include?(44)
 
# the index and find_index methods (different names for the same methods)
# it returns the position of searched element
colors = ["red", "green", "black", "blue", "yellow"]
p colors.index("blue")

# ** the select method - it select the methods we are looking for
# this is a very powerful method
colors = ["red", "green", "black", "blue", "yellow"]
result =  colors.select do |word|
    word > "g"
end
p result

teste = fives.select do |number|
    number > 100
end
p teste

# the reject method which is a complement for select method
# 
colors = ["red", "green", "black", "blue", "yellow"]
rejectes = colors.reject { |color| color.include?("b") }
p rejectes

puts "\n ------------------------------ \n"

# the partion method: it selects and rejects at the same time
foods = ["Steak", "Vegetable", "Beans", "Rice", "Tofu"] 
good = foods.select { |food| food.include?("Steak") }
bad = foods.reject { |food| food.include?("Steak") }
p good
p bad

good, bad = foods.partition { |food| food.include?("Steak") }
p good
p bad