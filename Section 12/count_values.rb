custom_count (my_hash, number)
    count = 0
    my_hash.each do |key, value|
        count += 1 if value == number
    end
    count
end