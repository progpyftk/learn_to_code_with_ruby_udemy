def my_each(my_arr)
    count = 0
    while count < my_arr.length
        yield(my_arr[count])
        count += 1
    end
end

my_each(["Lorenzo", "Mariana", "João"]) {|each| p each}