thing = "rocket ship"
thing[0] = "P"
p thing
thing[9] = "o"
p thing

# changing a sequence - it replaces the selected interval by the new string
thing[0, 5] = "thisssss "
p thing

# using range
thing[0..5] = "new string inserted "
p thing
