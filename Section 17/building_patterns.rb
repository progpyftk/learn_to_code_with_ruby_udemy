# any literal character in a regex matches itself in the string
# ex: the regex /a/ matches any string containing the letter a
p "once upon a time".match?(/a/)

# some non alphanumeric characters must be escaped with \
# p "is this true?".match?(/?/) >> raises an error - target of repeat operator is not specified: /?/
p "is this true?".match?(/\?/)
p "/home/leo".match?(/\/home\/leo/)

# special characters: ^ $ . / \  [ ]  { } ( ) +  * 

# the dot special character - matches any character except new line \n
# The parameter of the method is the pattern. The /.even/ regular pattern 
# looks for a text that starts with an arbitrary character followed by the 'even' characters.
# it means match any character followed by even, but not only even - returing the first character before
p "Seven".match /.even/
p "even".match /.even/ # >> this line prints nil since the regular expression expects one character before the 'even' string
p "eleven".match /.even/
p "aqui"
p "dvdssevenlorenzo".match /.even/
p "rejected".match /.ejected/
p "rejected".match /ejected/
p "ejected".match /ejected/
p "ejected".match /.ejected/ # >> this line prints nil since the regular expression expects one character before the 'even' string

# the ? character -  The .? stands for no character or one arbitrary character. This time there is a match.
p "even".match /.?even/
p "ejected".match /.?ejected/

# character class - they are put inside the regexp in squere brackes []
p /[dr]ejected/.match("rejected") # means match either d or r followed by ejected
p /[lf]ore/.match("lorenzo") # means match either l or f followed by ore

# we can add a range of characters inside the []
p /[a-z]orenzo/.match("lorenzo") # means match any letter from a to z followed by orenzo (if we add the first letter, it will look for anyletter+lorenzo)

# to match hexadecimal digit /A-Fa-f0-9/ that matches letter down and upcase and digits
