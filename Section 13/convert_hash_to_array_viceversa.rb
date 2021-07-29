fruit_prices = Hash.new(0) # 0 is our default value
fruit_prices[:banana] = 5.90
fruit_prices[:apple] = 4.90
fruit_prices[:orange] = 6.90
fruit_prices[:berry] = 7.90
fruit_prices[:peach] = 8.90

# to_a - it will give us an array of arrays
p fruit_prices.to_a
p fruit_prices.to_a.flatten
