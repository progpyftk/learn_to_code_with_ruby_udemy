password = "1231567"

if password != "123456"
    puts "Not Allowed"
else
    puts "Welcome"
end

# using unless keyword
unless password == "123456"
    puts "Not Allowed 1"
else
    puts "Welcome"
end

unless password.include?("123456")
    puts "Not allowed 2"
else
    puts "Welcome"
end

