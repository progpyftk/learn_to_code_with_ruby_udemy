str = "content"
p str.empty?
str_emp = ""
p str_emp.empty?

# what about nil?
p str.nil?
p str_emp.nil? # this will be false
# where nil matters?
p str[25, 5].nil? # it returns true becase there is nothing in these positions

