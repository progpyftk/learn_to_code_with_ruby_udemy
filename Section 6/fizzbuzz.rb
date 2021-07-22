# FizzBuzz Chalenge
def fizzbuzz(number)
    count = 1
    while count <= number
        # check if count is divisible by 3 and 5
        if count % 15 == 0
            puts "FizzBuzz #{count}"
        # check if count is divisible by 3 or 5
        elsif count % 3 == 0
            puts "Fizz #{count}"
        elsif count % 5 == 0
            puts "Buzz #{count}"
        end
        count += 1
    end
end

fizzbuzz(45)