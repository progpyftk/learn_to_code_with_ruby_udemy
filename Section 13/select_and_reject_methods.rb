# these methods select or reject the elements based on conditions passed in a block
fruit_prices = Hash.new(0) # 0 is our default value
fruit_prices[:banana] = 10.90
fruit_prices[:apple] = 14.90
fruit_prices[:orange] = 15.90
fruit_prices[:berry] = 21.90
fruit_prices[:peach] = 8.90

p fruit_prices.select { |fruit, value| value > 15.00}

p fruit_prices.reject { |fruit, value| value > 15.00}

p fruit_prices.select { |fruit, value| fruit.to_s.include?("ba")}