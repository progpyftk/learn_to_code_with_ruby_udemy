# bang method is a special method - usually it modifies or mutates the message receiver
# it has a ! at the end

word = "hello"
# it does not change the variable word
p word.capitalize
p word

# we could do this in order to modify it
word = word.capitalize
p word

# using the bang method
word = "hello"
word.capitalize!
p word

# commum bang methods
word.upcase!
word.downcase!
word.reverse!
word.swapcase!