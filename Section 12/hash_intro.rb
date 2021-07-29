# The older syntax for Hash data uses the “hash rocket,” =>:

h = {"key1" => 0, "key2" => 1, "key3" => 2}
p h

# Alternatively, but only for a Hash key that’s a Symbol, you can use a newer JSON-style syntax, 
# where each bareword becomes a Symbol, to access them keys name must be :symbol
h = {foo: 0, bar: 1, baz: 2} # {:foo=>0, :bar=>1, :baz=>2}
p h
p h[:foo] # if we make h[foo] - it does not work

# You can also use a String in place of a bareword:
h = {'foo': 0, 'bar': 1, 'baz': 2} 

# !! it’s an error to try the JSON-style syntax for a key that’s not a bareword or a String

person = {name: 'Matz', language: 'Ruby'} # in this case keys are symbols
p person[:name]

# why use symbols instead of strings? because they are much lighter
# they ocuppy much less momory space than a string
# symbols starts with :
p :name.class
p :name.methods.length 
p "name".methods.length # strings have much more methods, much havier

# examples
person = {
    :name => "Boris",
    :age => 25,
    :handsome => true,
    :language => ["Ruby", "Python", "Javascript"]
}
p person[:name]
p person[:language]

# using json way
person = {
    name: "Boris",
    age: 25,
    handsome: true,
    language: ["Ruby", "Python", "Javascript"]
}
p person[:name]
p person[:language]

# we cant assign a value to a symbol like this:
# :name = "Lorenzo"
# because symbols are not variables! We actually assign symbols to variables
x = :sym # :sym will ever point to the same place
y = :sym # x and y will be the same thing, in this case :sym
p (x.__id__ == y.__id__ ) && ( :sym.__id__ == x.__id__) # => true

# however you create a symbol object, as long as its contents are the same, it will 
# refer to the same object in memory. This is not a problem because a symbol  
# is an immutable object. Strings are mutable.

x = "string"
y = "string"
p (x.__id__ == y.__id__ ) || ( "string".__id__ == x.__id__) # => false

# This only creates five objects in memory -- one symbol, two strings and two hash objects.
hash1 = { :symbol => "value"}
hash2 = { :symbol => "valueeee"}
p hash1[:symbol]
p hash2[:symbol]

# This creates six objects in the memory -- four string objects and two hash objects
hash1 = { "string" => "value"}
hash2 = { "string" => "value"}

# Symbols don't contain values, they are values. 
# Hashes contain values. The symbol :ruby does not contain "red" or "programming". 
# The symbol :ruby is just the symbol :ruby. 
# It is your hashes, that each contain those values, 
# in each case pointed to by the same key.

# converting symbols to string
p :name.to_s
p :name.to_s.class

# converting string to symbols
p "name".to_sym
p "name".to_sym.class
