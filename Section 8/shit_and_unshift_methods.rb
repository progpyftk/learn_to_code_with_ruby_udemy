arr = [1, 2, 3, 4, 5, 6, 7, 8]
p arr
# shift - extracts the first element
element = arr.shift
p arr
p element
elements = arr.shift(3)
p elements
p arr

# unshift - it adds elements to the array at the beggining
arr.unshift(100,200,300)
p arr