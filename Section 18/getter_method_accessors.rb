class Wine
    def initialize
        @name = "wine name"
        @maker = "wine maker"
        @price = 0.00
    end
    
    def change_price(new_price)
        @price = new_price
    end
end

# the variable defined in the above class cannot be accessed by default
wine = Wine.new()
# p wine.name >> undefined method `name' for #<Wine:0x053219b8> (NoMethodError)
# p wine.@name >> syntax error
# it happens because it is encapsulated, we need to get this information using a methods

# in the class below we define two getter methods

class MyWine
    def initialize
        @name = "wine name"
        @maker = "wine maker"
        @price = 0.00
    end
    
    # we define a method named name, which will return the instance variable @name
    # remember that this method's name name, isn't the same as @name, which is a instance variable
    def name
        @name
    end

    def maker
        @maker
    end

    def price
        @price
    end

    def set_name(name)
        @name = name
    end

    def set_maker(maker)
        @maker = maker
    end

    def set_price(price)
        @price = price
    end
end

# accessing the instance variable through the method
mywine = MyWine.new()
p mywine.name
p mywine.maker
p mywine.price
p mywine.set_name("Las Perdices")
p mywine.set_maker("Toro Loco")
p mywine.set_price(21.49)

# accessor methods - reader and setter methods
# we wil rewrite the Wine class using the accessor method
# reader acessor - attr_reader
# setter accessor - attr_writer
# both functions accessor - attr_accessor

class WineFinal
    # ruby defines the methods to get and set these instance variables, to acess them obj.variable_name
    # to set just use the syntax obj.variable_name = value
    attr_accessor :name, :maker, :price 

    def initialize
        @name = "wine name"
        @maker = "wine maker"
        @price = 0.00
    end

end






