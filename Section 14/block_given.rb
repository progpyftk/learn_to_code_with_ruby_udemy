def pass_control_on_condition
    puts "Inside the method"
    yield
    puts"Back inside the method"
end

# if we run the code withoug passing a block, we ll get an error
#pass_control_on_condition

# in order to avoid this kind of error, we can use the block_given method
def pass_control_on_condition
    puts "Inside the method"
    if block_given?
        yield
    end
    puts"Back inside the method"
end

pass_control_on_condition

def pass_control_on_condition
    puts "Inside the method"
    yield if block_given?
    puts"Back inside the method"
end