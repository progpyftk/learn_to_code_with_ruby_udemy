# using a hash as argument solve one of most commom misktakes
# which is passing argument in the wrong order
# ex:

def calculate_total_1(price, tip, tax)
    tax_amount = price * tax
    tip_amount = price * tip
    price + tip_amount + tax_amount
end

puts calculate_total_1(100, 0.1, 0.2) # 130
puts calculate_total_1(0.1, 100, 0.2) # 10.2

# now if using a hash as argument
def calculate_total(my_hash)
    tax_amount = my_hash[:tax] * my_hash[:price]
    tip_amount = my_hash[:tip] * my_hash[:price]
    my_hash[:price] + tax_amount + tip_amount
end

my_hash = {
    price: 100,
    tip: 0.1,
    tax: 0.2
}

p calculate_total(my_hash)