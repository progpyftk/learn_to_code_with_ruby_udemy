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

    def to_s
        puts "The wine's name is: #{@name}"
        puts "The wine's age is: #{@year}"
        puts "The wine's price is: #{@price}"
    end

end

# we overrided the original Object#to_s method
wine_1 = Wine.new()
wine_1.to_s