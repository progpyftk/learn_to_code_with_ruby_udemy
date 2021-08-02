# the wild card symbol is a dot > .
phrase = "Ruby programming language is amazing! Used since 1990."

# using the index return operator =~]
p phrase =~ /./ # >> 0 it is returning the index of the first character  which in this case is the letter R

p phrase.scan(/./) # return all charcters, INCLUDING THE PERIOD IN THE END
 
# dot means ANY character - how do we use it???
# we use this whenever we dont know what character to expect in a specific position but we do know
# that we will have a character in that position in general

# Example: with I want to find the substring "am", followed by any string, we can do
puts
puts phrase.scan(/.am/) # >> ran and  am
puts phrase.scan(/.ing/)

# the dot doesn't need to go only at the beggining 
puts phrase.scan(/a.e/) # in this case we are looking for some string that starts with a then any character might appear and the ends with e

# we can ever have more than one dot
p phrase.scan(/a.e/) # >> uage
phrase = "Ruby programming language is amazing! Used since a1e990."
p phrase.scan(/a.e/) # >> ["age", "a1e"]
p phrase.scan(/a./) # >> ["age", "a1e"]

# using dots in sequence means more characters
p phrase.scan(/lang..ge/) # >> language


