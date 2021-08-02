# the scan method is called on a string, but its argument is a regex expression
# it checks if the content of the string match the regular expression
# scan finds ALL the occurencies, it return an arrays of those matches
phrase = "Ruby programming language is amazing! Used since 1990"

p phrase.scan(/u/) # >> ['u', 'u']
p phrase.scan(/is/)

# if i wanted to find either character i or s? i need to use the square brackets []
p phrase.scan(/[is]/)

# unique characters
# digits: we can search for digits using the \ before d: \d
p phrase.scan(/\d/) # >> ["1", "9", "9", "0"]

# we can use the character + to take the complete digits, until something different from a digit
# it finds the first occurency that satifies the condition (/d) and keep going until it breaks
phrase = "Ruby programming language is amazing! Used since 1990 and phone number is +55-27-996991149" 
p phrase.scan(/\d+/)

# scan method also accepts block
p phrase.scan(/\d+/) { |each_match| puts each_match  }