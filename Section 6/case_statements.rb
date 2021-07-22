# it is used to avoid a lot of if elsif statements
food = "cheese"
if food == "pasta"
    # do something
elsif food == "rice"
    # do something
elsif food == "beans"
    # do something
elsif food == "meat"
    # do something
elsif food == "chicken"
    # do something
elsif food == "cheese"
    # do something
elsif food == "fruits"
    # do something
end

# using case statement
def rate_my_food(food)
    case food
    when "Steak"
        "Pass the steak sauce"
    when "Sushi"
        "Great choice"
    when "Rice", "Tacos", "Quesadilhas" # it means "or", rice or tacos or quesadilhas
        "Very good"
    else
        "I dont know about that food"
    end
end

puts rate_my_food("Rice")



