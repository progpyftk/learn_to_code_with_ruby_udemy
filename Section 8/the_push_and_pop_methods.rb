# ways to add elements to an array

locations = ["house", "airport", "new york", "brasil"]

# add at the very end of the array
locations.push("restaurant")
p locations

# it can takes more than one argument
locations.push("Colatina", "Jacupemba")
p locations

# using shovel operator <<
locations << "Vix" << "Sanja"
p locations

# insert method - we can choose the postion that it will be inserted
locations.insert(5, "Banania")
p locations
locations.insert(0, "Lorenzo", "Colombia", "EUA")
p locations