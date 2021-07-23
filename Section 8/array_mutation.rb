fruits = ["Apple", "Banana", "Peach", "Grape", "Berry"]

fruits[1] = "Watermelon"

# if we insert something in a longer position, ruby fills the array with nil until that position
fruits[10] = "Papaya"
p fruits

fruits[2,3] = ["Kiwi"]
p fruits

fruits[0..2] = ["Kiwi", ["Tomato"], "Corn", "Raspberry"]
p fruits

fruits[0..-1] = "No more fruits"
p fruits
