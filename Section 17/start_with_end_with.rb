phrase = "Ruby programming language is amazing!"

puts phrase.start_with?("Ruby")
puts phrase.start_with?("Josh")
puts phrase.end_with?("ing!")
puts phrase.end_with?("ing")

def custom_start_with(string,substring)
    string[0...substring.length] == substring ? true : false     
end

p custom_start_with(phrase, "Ruby")
