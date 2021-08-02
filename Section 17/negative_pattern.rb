poem = "99 bOttlEs of beer of the wall, 99 bottles of beer"

# suppose we want to count the number of consonants
# note that we have: numbers, commas ... so we must exclude them
# the exclude symbol is ^

# excluding vocals
puts
p poem.scan(/[^aeiouAEIOU]/)

# excluding vocals + spaces
puts
p poem.scan(/[^aeiouAEIOU\s]/)

# excluding vocals + spaces + numbers + commas
puts
p poem.scan(/[^aeiouAEIOU,\s\d]/)
puts "there are:"
p poem.scan(/[^aeiouAEIOU,\s\d]/).size
puts "consonants"
