# the spaceship operator is the "<=>" - return one of the values: -1,0,1,nil

# return 0 when evaluation is equal
p 5 <=> 5
# return -1 when left side is smaller
p 5 <=> 10
# return 1 when left side is higher
p 10 <=> 5
# return nil when cant evaluate
p [3, 4, 5] <=> [nil, 4, 5]
p [3, 4, 5] <=> ["bla bla bla", 4, 5]

# this operator is very used when it comes to order / sort
p [3, 4, 5] <=> [3, 4, 5] # >> 0

p [3, 4, 5] <=> [3, 4, 10] # >> -1

p [3, 4, 10] <=> [3, 4, 5] # >> 1



