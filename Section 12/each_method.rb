# it iterate over every single pair in a hash
# it works the same as in the array objects
# the each method belongs to the module named Enumerable
# this module is mixed in both classes: Array and Hash
person = {
    name: "Boris",
    age: 25,
    handsome: true,
    language: ["Ruby", "Python", "Javascript"]
}

person.each do |each_key, each_value|
    p "Key: #{each_key} , Value: #{each_value}"
end

# if we use only one block varaible, it will be the pais
person.each do |each_pair|
    p each_pair
    p "key: #{each_pair[0]}"
    p "value #{each_pair[1]}"
end
