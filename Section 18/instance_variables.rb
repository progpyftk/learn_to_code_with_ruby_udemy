# instance variable are variable that belong to a specific object
# they define the object's properties or attributes
# they make up the object's state - each object has a custom state and it can change over the time

# instance variables start wirh the symbol @, without this symbol the variable is interpreted
# as a local variable to the method it is used

# the initialize method - it is called imemeditely when an object is instantiate from a class


italian_wine = Wine.new
french_wine = Wine.new
brazilian_wine = Wine.new

puts italian_wine.inspect
puts italian_wine.instance_variables
puts french_wine.inspect
puts italian_wine.instance_variables
puts brazilian_wine.inspect
puts italian_wine.instance_variables

