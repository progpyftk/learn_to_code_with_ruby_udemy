# it checks if an object can respond to a method calling
a = "this is a string"
p a.class
# the name of the method must be passed as string
p a.respond_to?("split")
p 5.respond_to?("length")

# another sintax
p a.respond_to?(:split)
p 5.respond_to?(:length)