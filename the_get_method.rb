# the return of method gets is a string with a breakline at the end

p "what is your name?"
name = gets
p "thanks for giving your name dear #{name}. So see you later"

# the method chomp removes the line break at the end
name = gets.chomp
p "thanks for giving your name dear #{name}. So see you later"

# string to integer method
age = gets.chomp.to_i
p "Your age plus 30 is: #{age + 30}"
