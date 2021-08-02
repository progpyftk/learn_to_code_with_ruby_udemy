# self keyword will refer to the current object, in each scope there will be a different self
class Wine
    def initialize
        @name = "wine name"
        @maker = "wine maker"
        @year = "wine year"
        @price = 0.00
    end
    
    def change_price(new_price)
        @price = new_price
        p "the price of this wine is #{@price}"
        # i dont what object is receiving this message, but i know that always will be this kind of instance
        p "the class of this object is #{self.class}"
        p "the object id is #{self.object_id}"
    end

    # we also can define CLASS METHODS, which are different of INSTANCE METHODS
    # example of class method
    def Wine.a_class_method
        puts "this is a class method"
    end

    # in order to ilustrate self context, we also can define a CLASS METHOD as self.method, because it is the class scope
    def self.another_class_method
        puts "this is another class method, called by #{self.name}"
    end

end

# instance method
wine_1 = Wine.new()
wine_1.change_price(40)

# class method, note that a class instance cant call it
Wine.a_class_method
# wine_1.a_class_method >> undefined method `a_class_method' for #<Wine:0x05cd2130> (NoMethodError)

Wine.another_class_method


# How the current self is determined?
# Class definition
class MyClass
    self # self is a MyClass object 
end

module MyModule
    self # self is a MyModule object 
end


