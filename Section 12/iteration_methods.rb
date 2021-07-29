person = {
    :name => "Boris",
    :age => 25,
    :handsome => true,
    :language => ["Ruby", "Python", "Javascript"]
}

person.each_key do |key|
    p "Key: #{key}"
end

person.each_value do |value|
    p "Value: #{value}"
end

# Retrieve keys and values to arrays
p person.keys
p person.values
