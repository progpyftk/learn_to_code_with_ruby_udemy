# two names for the SAME method - inject and reduce
# it is used when iterating over an array and we need to keep
# track of some kind of operation from all elements prior to that
# one we are currently on

# the reduce argument is our starting point.
# previous represents the previous evaluation result
# current represents the acutal evaluation
[0, 10, 20, 30, 40].reduce(0) do |previous, current|
    p "the previous element is #{previous}"
    p "the current element is #{current}"
end

[0, 10, 20, 30, 40].inject(0) do |previous, current|
    p "the previous element is #{previous}"
    p "the current element is #{current}"
end
