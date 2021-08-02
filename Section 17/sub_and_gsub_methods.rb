# sub - it replaces the first occurency of the first argumento by the second
puts "whimper".sub("m", "s") # >> whisper
puts "word".sub("word", "sword") # >> sword
word = "word"
word.sub!("word", "sword") # >> the bang version
puts word

# gsub - works the same as sub, but it replaces all the occurencies
phone = "+55 27 99699 1149"
phone.gsub!(" ", "-")
p phone

# but if we have something more complex
phone = "(55)-99699 1149" 
# we would have to call gsub many times
p phone.gsub(" ", "-").gsub("(","").gsub(")", "") # this is very hard

# there is an easiet way of doing this, using regex
p phone.gsub(/[-\(\)\s]/, "") # only numbers
puts phone.scan(/\d/)