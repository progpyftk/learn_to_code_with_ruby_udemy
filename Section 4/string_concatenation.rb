first_name = "Harry "
second_name = "Potter"

p first_name + second_name

# or using the concat method - which is a bang method, even it does not use the !
p first_name.concat(second_name)

# the shallow operator
p first_name << second_name << " Wizard"

# prepend method - it inserts the argument at the beggining
first_name = "Harry"
second_name = "Potter "
p first_name.prepend(second_name) 
p first_name # it is also a bang method