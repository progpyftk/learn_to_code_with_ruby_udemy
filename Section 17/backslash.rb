paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."

p paragraph.scan(/./) # >> all the characters

# using the backslash ruby see it as literal dot
p paragraph.scan(/\./) # >> [".", ".", "."]

# using \d - the backslash + lowercapital d means only digits
p paragraph.scan(/\d/) # >> ["5", "5"]

# \D means all except the digits
p paragraph.scan(/\D+/) # >> ["This is my essay. I deserve an A. I rank it a ", " out of ", "."]

# the \s means any white space character
p paragraph.scan(/\s/) # >> [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
p paragraph.scan(/\S+/) # ["This", "is", "my", "essay.", "I", "deserve", "an", "A.", "I", "rank", "it", "a", "5", "out", "of", "5."]
