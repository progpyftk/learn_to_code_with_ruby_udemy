# the yield keyword transfer the control from the method to the attached block
# the mwthods stops it execution and then waits until the block is done

def pass_control
    puts "This is inside the method"
    yield
    puts "Now I am back to the method"
end
# attention, if we forget to pass the blocks, ruby will raise an error
pass_control { puts "Now I'am inside the block" }

# another example of yeild usage, in which the block result will be stored at yield
def who_am_I
    adjective = yield
    puts "I am #{adjective}"
end

# do NOT include the return keyword
who_am_I {"Handsome"}

# Multiples pass
def multiple_pass
    puts "multiple_pass: inside the method"
    yield
    puts "multiple_pass: back inside the method"
    yield
end

multiple_pass {puts "multiple_pass: Now I am inside the block"}






