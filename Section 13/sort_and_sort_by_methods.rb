fruit_prices = Hash.new(0) # 0 is our default value
fruit_prices[:banana] = 10.90
fruit_prices[:apple] = 14.90
fruit_prices[:orange] = 15.90
fruit_prices[:berry] = 21.90
fruit_prices[:peach] = 8.90

# sort, sort by keys
p fruit_prices.sort
p fruit_prices.sort.reverse

# sort by value
p fruit_prices.sort_by {|key, value| key}
p fruit_prices.sort_by {|key, value| value}
