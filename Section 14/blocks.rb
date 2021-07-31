# block is a block of code to be executed, it is not an object
# a block is attached to a method call, it only exist with a block
# it is not an argument, it is a block
# block may have its own variable, block variables
# what the block do is to specify what we want to do with each element
[7, 8, 9, 10].each {|each| puts each * 10}

[7, 8, 9, 10].map {|each| puts each * 10} # the sane as each, but return an array



