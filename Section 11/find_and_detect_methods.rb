# it returns the position of the FIRST element that meets the conditions
words = ["freezer", "kitchen", "room", "mouse", "irrigation"]
result = words.find do |word|
    word.length > 5
end
p result

# remember about the select method, it will return ALL the
# elements which meets the conditions
result = words.select do |word|
    word.length > 5
end
p result

