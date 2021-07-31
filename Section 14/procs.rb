# proc is a new type of object
# it function as essentially as a saved block
# so when we have a block that we use and reuse over and over and
# dont want to rewrite, it is time to use the proc

# example
a = [1,2,3,4,5]
b = [6,7,8,9,10]
c = [11,12,13,14,15]

acubes = a.map {|num| num ** 3}
bcubes = b.map {|num| num ** 3}
ccubes = c.map {|num| num ** 3}
p acubes, bcubes, ccubes

# we used the same block many times, lets customize it and reuse
cubes = Proc.new { |number| number ** 3}
# in oder to tell ruby to use the proc, we cant just pass the cubes as argument
# we must use the symbol &
acubes = a.map(&cubes)
bcubes = b.map(&cubes)
ccubes = c.map(&cubes)
p acubes, bcubes, ccubes

# another usage example - with select methodd
ages = [10, 12, 25, 35, 60, 75]

is_old = Proc.new do |age|
    age > 25
end

p ages.select(&is_old)