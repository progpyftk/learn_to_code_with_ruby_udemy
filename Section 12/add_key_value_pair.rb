menu = {
    burger: 3.99,
    pizza: 5.99,
    chips: 9.70
}

menu[:sandwich] = 10.99
menu[:taco] = 18.90
 p menu

 # another way
 menu.store(:sushi, 7.50)
 p menu
