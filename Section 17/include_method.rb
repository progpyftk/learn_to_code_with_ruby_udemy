phrase = "Ruby programming language is amazing"

p phrase.include?("Ruby")

def custom_include(string, substring)
    string.chars.each_with_index do |char, index|
        return true if string[index...(substring.length + index)] == substring
    end
    false
end
p custom_include(phrase, "language")
