# they exist as long their scope exists

# method local variable
def introduce_myself
    variable_1 = "I am a genius"
end

self.introduce_myself

# if we try to call the variable_1 here, it wont work
# p variable_1 (undefined local variable or method `validate_object' for main:Object (NameError))

# we can even create other variable with the same name, because they wont be the same
variable_1 = "Another variable"
p variable_1
p introduce_myself