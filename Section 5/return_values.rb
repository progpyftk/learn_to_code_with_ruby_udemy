def add_two_numbers(num1, num2)
    puts "Solving the math problem"
    # if we remove the word return we will have the same result
    # num1 + num2
    return num1 + num2
end
p add_two_numbers(3, 5)

# when do we need to use the word return?
# we use when we need to return form a method early, usually when there are conditionals and loops
def add_two_numbers_if(num1, num2)
    if num1 + num2 > 10
        return puts "higher than 10"
    else
        return puts "smaller than 10"
    end
    puts "is will never be shown"
end
add_two_numbers_if(5,10)

# Default return values
def nothing
end
p nothing # it returns nil

def return_string
    "What will be the return value"
end
p return_string # it returns the string
p return_string.class


def return_guess
    puts "What will be the return value" # it returns the puts return, which is nil
end
p return_guess
p return_guess.class


