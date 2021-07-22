i = 0
while i < 10
    p i
    i += 1
end

i = 1
status = false
while status == false && i < 3
    print "enter the username"
    username = gets.chomp.downcase
    print "enter the password"
    password = gets.chomp.downcase
    if username == "lorenzo" && password == "123456"
        puts "Welcome"
        status = true # ends the loop
    end
    i = i + 1
end     
         

