# instace variables or attributes are variable that belongs to the object
# attributes provide info about the object current state
# instance methods are those the object can respond
# a class is a template, or a blueprint to produce an object
# each object is an instance of the class, it is created from the class
# instantioation is the process of creating an object from a class

# method Object#class which is a method of Object class
p Object.methods.include?(:class)
p 5.class
p "string".class
p [1,2,3].class
p true.class
p lambda {}.class
p Proc.new {}.class


# a superclass is a class right above that class
p "-------- Superclass ---------" 
p BasicObject.superclass
p Object.superclass
p String.superclass
p String.superclass.superclass
p String.superclass.superclass.superclass
puts

# the #ancestors method return all the above classes and mixed in modules
p "-------- Ancestors ---------" 
p BasicObject.ancestors
p Object.ancestors
p String.ancestors

# checking what methods are defined for Arrays and Hash
p "-------- Array and Hash same methods ---------" 
 puts Array.methods & Hash.methods

 p "-------- exclusive Array against Hash  methods ---------" 
 p Array.methods - Hash.methods # notice with the below line that CLASS METHOD IS DIFFERENT OF INSTANCE METHODS
 p [1,2,3].methods - Hash.methods
 p Hash.methods - Array.methods