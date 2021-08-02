# regular expressions are instances of Regexp class - they are not strings
# they representation of patterns

# the constructor is : //
p //.class

# another commom way to represent regex is using %r{}:
p %r{}.class

# usage example
phrase = "Ruby programming language is amazing!"

# lets start by the first capital letter: R  ... the operator =~ return the index postion of the first match
p phrase =~ /R/
p phrase =~ /i/ 
p phrase =~ /!/ 

# now if we have a period at the end, lets take a look
phrase = "Ruby programming language is amazing."
p phrase =~ /./ # >> 0, but it should be 36, what is wrong? Dot is a special charcter
# in regex . means a wild card, which means any character, so it is returning the index of the first character
# which in this case is the letter R

# it is fine to find for many characthers
p  phrase =~ /prog/

# the simplest way to check it there is a match between a pattern and a string is 
# using the match mathod, in any direction
p /abc/.match?("The alphabet starts with abc")
p "The alphabet starts with abc".match?(/abc/)

# if we use only .match instead of .match? it will return an object MatchData
p /abc/.match("The alphabet starts with abc")

# using the operator =~ - it returns the index where match starts
p "The alphabet starts with abc" =~ /abc/
p "The alphabet starts with abc" =~ /y/ # >> nil



