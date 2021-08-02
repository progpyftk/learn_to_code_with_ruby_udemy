class Wine

end

puts Wine.superclass
puts Wine.superclass.superclass

italian_wine = Wine.new
french_wine = Wine.new
brazilian_wine = Wine.new

p italian_wine.class
p french_wine.class
p brazilian_wine.class

p italian_wine
p french_wine
p brazilian_wine

p italian_wine.methods
p italian_wine.is_a?(Wine)
p italian_wine.respond_to?(:singleton_method)

# object aliases

old_wine = Wine.new
new_wine = Wine.new

p old_wine.object_id
p new_wine.object_id

# when we assign one object to another, we are actually poiting it to the memory location
new_wine = old_wine
p old_wine.object_id
p new_wine.object_id # the memory location has changed, and now point to the same place as old_wine

