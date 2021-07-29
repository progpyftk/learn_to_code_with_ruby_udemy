fruit_prices = Hash.new(0) # 0 is our default value
fruit_prices[:banana] = 5.90
fruit_prices[:apple] = 4.90
fruit_prices[:orange] = 6.90
fruit_prices[:berry] = 7.90
fruit_prices[:peach] = 8.90

puts fruit_prices.key?(:berry)
puts fruit_prices.key?("berry")
puts fruit_prices.key?(:grape)

puts fruit_prices.value?(5.90)
