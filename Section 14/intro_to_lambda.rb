# lambda is a kind of nameless or anonymous method in ruby
# they are very similar to procs, but different
# lambdas are objects, we can use them always when we can use proc

# proc usage
square = Proc.new {|each| each ** 2}
p [1,2,3].map(&square)
p square.call(5)

# using lambda
square_lambda = lambda {|each| each ** 2}
p [1,2,3].map(&square_lambda)
p square_lambda.call(5)

# what are they differences?
# 1. The way how they treat a wrong number of arguments
myproc = Proc.new {|name, age| p name, age}
p myproc.call("Lorenzo", 23, 45) # it does not raise an error
p myproc.call("Lorenzo") # it does not raise an error, and gives age as nil

mylambda = lambda { |name, age| p name, age }
# p mylambda.call("Lorenzo", 23, 45) # it raises an error
# p mylambda.call("Lorenzo") # it raises an error

# 2. How they return values to methods
def diet_proc
    status = Proc.new { return "You gave in"}
    status.call
    "You completed the diet"
end
p diet_proc # it returns "You gave in", the Proc takes control of return

def diet_lambda
    status = lambda { return "You gave in"}
    status.call
    "You completed the diet"
end
p diet_lambda # it returns "You completed the diet" , the lambda do not return anything
# this is why lambda is well known as anonymous method
# lambda is most used because it did not overwrite the method own return



