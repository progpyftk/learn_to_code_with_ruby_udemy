str = "5"
p str
p str.class
p str.to_i
p str.to_i.class

# notice that these methods does not change the original string:
p str

# converting numbers to strings - it does not change the orignal variable
number = 10
p number.to_s.class

# float to integer, it cuts the float part
pi = 3.14
p pi.to_i

