# squeeze . Returns a new string where runs of the same character that occur in this set are replaced by a single character. 
# If no arguments are given, all runs of identical characters are replaced by a single character.
 sentence = "thhhhhhhhe aardvak jummped ovver the fence"
 p sentence.squeeze
str = "yellow"
p str.squeeze

# if an argument is passed
p sentence.squeeze("a")

def custom_squeeze(string, substring)
    length = substring.length
    delete_index = []
    string.chars.each_with_index do |char, index|
        sequence = string[index, length]
        if sequence == substring
            delete_index << index + length if string[index+length, length] == sequence
        end
    end
    dont_copy_indexes = []
    delete_index.each do |each|
        i = 0
        while i < length
            dont_copy_indexes << each + i
            i += 1
        end
    end
    new_string = String.new
    string.chars.each_with_index do |char, index|
        unless dont_copy_indexes.include?(index)
            new_string.insert(-1, char)
        end
    end        
    p new_string
end

#custom_squeeze("Heeeeeeeellololololo Worldlolo", "jjjjj")


# now using the range obejct
def custom_squeeze_change(string, substring)
    change_string = string
    i = 0
    while i <= string.length
        sequence = change_string[i, substring.length]
        if sequence == substring
            if change_string[i + substring.length, substring.length] == sequence
                change_string[i + substring.length, substring.length] = ""
                i = -1
            end
        end
        i += 1
    end
    p change_string
end

custom_squeeze_change("aaa", "aa")
p "aaa".squeeze("aa")