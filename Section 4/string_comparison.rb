a = "hello"
b = "Hello"
c = "Hello"

p a == "Lion"
p a != "Lion"

# case matters
p a == c

# grater than and lower than - works like a dict ordering
p "Apple" < "Banana"

# upper case comes first than lower case for the same letter: ABCD...Zabcdef....z
p "a" > "A"
p "a" > "Z"
p "Help" < "banana"