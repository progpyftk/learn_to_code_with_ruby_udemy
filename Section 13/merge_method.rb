# it merges to hashes in one
fruit_prices = Hash.new(0) # 0 is our default value
fruit_prices[:banana] = 10.90
fruit_prices[:apple] = 14.90
fruit_prices[:orange] = 15.90
fruit_prices[:berry] = 21.90
fruit_prices[:peach] = 8.90

person = {
    name: "Boris",
    age: 25,
    handsome: true,
    language: ["Ruby", "Python", "Javascript"]
}

p fruit_prices.merge(person)