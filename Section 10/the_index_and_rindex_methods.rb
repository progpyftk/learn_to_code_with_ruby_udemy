# the index method returns the index of the substring passed as argument
# if not find, it returns nil

str = "this is a new string that i am going to use as example"
p str.index("as")

# we can pass an optional second argument, which is the position
# where the method will start counting
p str.index("i")
p str.index("i",20)

# the rindex starts from the end, but it return the index position
p str.rindex("i")

# challenge - make the custom_index method
my_string = "I am very handsome"

def custom_index(string, substring)
    # first - check if the substring is inside the string
    unless string.include?(substring)
        return "substring not found"
    end
    length = substring.length
    string.chars.each_with_index do |char, index|
        # the first index represent the start position, and second the lenght
        # it will run the string in blocks of size of substring.length
        sequence = string[index, length]
        return index if sequence == substring
    end
end

p custom_index("lorenzo", "zo")

        




