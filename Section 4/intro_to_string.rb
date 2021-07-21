str = "this is a string"

# number of characters
p str.length

# string class
str.class

# creating by method call
str2 = String.new("this is the string 2")
p str2

# to_s method, note is creates a new one, it does not change the message receiver
str3 = 3
p str3.to_s
p str3.to_s.class
p str3.class

# multiline strings
mult_str = <<MLS
all the text between the two M-S-L will be part
of th the mult line string 
lets see how it works
MLS

p mult_str
print mult_str

# escaoe characters
puts "Hello world"
puts 'Hello world'

# we must tell ruby that " " around goodbye word must be escaped, for that we use backslash
# this way we can print the both quotes
puts "Juliet said \"Goodbye\" to Romeo"

# linebreak
puts "Let's add a line break \nright here"
# the p method will show us the "\n"
p "Let's add a line break \nright here"

# tab
puts "\t Insert a tab right here"

# mais differences between simple and double quotes
# 1. line breaks do not work at single quotes
puts 'Lets add a linebreak \nright here'
# 2 string interpolation doesnt work with single quotes
puts '#{str}'
puts "#{str}"