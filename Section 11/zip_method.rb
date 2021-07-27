# combine one or more elements of an array with other by the same indexes

fruits = ["Apple", "Banana", "Peach", "Grape", "Berry"]
locations = ["house", "airport", "new york", "brasil"]
p fruits.zip(locations)
# zip accepts many arguments
p fruits.zip(locations, ["A", "B", "C", "D", "E"])