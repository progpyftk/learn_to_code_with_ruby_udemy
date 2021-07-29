menu = {
    burger: 3.99,
    pizza: 5.99,
    chips: 9.70
}
p menu

p menu.fetch(:burger)
# p menu.fetch(:nonexistentkey) # >> error

# the second argument for fetch method is returned when it cant find the key
p menu.fetch(:nonexistentkey, nil)