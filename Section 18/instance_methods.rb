# when we define an instance method on a class we define some kind of functionality that can be sent 
# to the object

class Wine
    def initialize
        @name = "wine name"
        @maker = "wine maker"
        @year = "wine year"
        @price = 0.00
    end
    
    def change_price(new_price)
        @price = new_price
    end
end

wine_1 = Wine.new()
# p wine_1.price - for now we cant use this kind of syntax, but later we will manage that
p wine_1.inspect
wine_1.change_price(9.85)
p wine_1.inspect

# as we can note the change_price method is public, all the instances of Wine will be able to respond to it
# but the initialize method isnt. It is a private method, if we try to call it by an instance it raises an error
# saying it is a private method
# wine_1.initialize 

# another important point is that the change_price is an object method, and not a class method
# there are class methods and instance methods - we cant call the change_price by the class
# Wine.change_price >>  undefined method `change_price' for Wine:Class 
p wine_1.methods.sort - Wine.methods.sort # >> :change_price 

p wine_1.respond_to?(:to_s)
p wine_1 # >> <Wine:0x0587d6a8 @name="wine name", @maker="wine maker", @year="wine year", @price=9.85>
p wine_1.to_s # >> "#<Wine:0x051e96d0>" this is the default representation as string

# we will define our custom to_s in our class and it will override the original to_s