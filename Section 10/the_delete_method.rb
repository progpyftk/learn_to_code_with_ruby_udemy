# delete the arguments - note that is deletes all the occourence of separated arguments
#puts "Hello World".delete("ld")

def custom_delete(string, letters)
    letters.split("").each do |letter|
        i = 0
        while string.include?(letter)
            if string[i] == letter
                string[i] =  ""  
                i = 0
            else
                i += 1
            end
        end
    end
    print string
end
#custom_delete("Hello World", "lo")

# easy way : index = string.index(letter) 
def custom_delete_index(string, letters)
    letters.split("").each do |letter|
        i = 0
        while string.include?(letter)
            string[string.index(letter)] = "" if string[string.index(letter)] == letter
        end
    end
    print string
end
custom_delete_index("Hello World", "lo")