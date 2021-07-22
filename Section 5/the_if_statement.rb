if "zebra".include?("eb")
    puts "Ok"
end

if 5.odd?
    p "the number is odd"
else
    p "the number is even"
end

# IMPORTANT: the onlu TWO things which are false in ruby: nil and false
# strings and numbers are true
# true is true
# {} is true, ranges are true, [] are true
# only nil and false are false

# if elsif statments
def check_number(number)
    if number < 2
        p "the number is smaller than 2"
    elsif number < 4
        p "the number is smaller than 4"
    elsif number < 6
        p "the number is smaller than 6"
    elsif number <= 8
        p "the number is smaller than 8"
    elsif number < 100
        p "the number is smaller than 100"
    else
       p "Unaccepable"
    end
    return number
end

check_number(20)
check_number(8)
check_number(6)
check_number(2)
# usage of else statment, notice at the end of the method, else works like an escape
check_number(200)

# multiple conditions -  && operator
age = 25
ticket = "General Admission"
id = true
if age == 25 && id == true
    p "Age is 21 and id is true"
end

# multiple conditions - || the or operator
if age > 20 || id == false
    p "age is higher than 20 or id is false"
end

# multiple conditions - parentesis and precedence
def authenticate_agent(rank, name, credentials)
    if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
        puts " Acress granted "
    else
        puts " Access denied "
    end
end
authenticate_agent("007", "James Bond", "Normal Person")

# nested if statements
def meal_plan(time_of_week, time_of_day)
    if time_of_week == "weekday"
        if time_of_day == "breakfast"
            "Cereal"
        elsif time_of_day == "lunch"
            "Sandwich"
        elsif time_of_day == "dinner"
            "Nuggets"
        end
    elsif time_of_week == "weekend"
        if time_of_day == "breakfast"
            "French toast"
        end
    end
end



