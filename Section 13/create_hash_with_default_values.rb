fruit_prices = Hash.new(0) # 0 is our default value

fruit_prices[:banana] = 4.90
fruit_prices[:apple] = 4.90
fruit_prices[:orange] = 4.90
fruit_prices[:berry] = 4.90
fruit_prices[:peach] = 4.90

# if we call a key that dont exist it will return the default value
p fruit_prices[:watermelon]

# later we can change the default value
fruit_prices.default = "Dont exist"
p fruit_prices[:watermelon]
