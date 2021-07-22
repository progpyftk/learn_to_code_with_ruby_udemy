# assign a new value to the variable if, and only if the current value is nil

y = nil
p y

y = 5
p y

y = 10
p y

# the conditional assignment symbol is: ||=
y = nil
p y
y ||= 5
p y

# now the value of y is 5, it wont change
y ||= 10
p y

# usage example
string_to_be_extracted = "Hello"
extract_position = 100
letter_extracted = string_to_be_extracted[extract_position]
# if the extraction failed, letter extracted is nil, so
letter_extracted ||= "Not found"
p letter_extracted