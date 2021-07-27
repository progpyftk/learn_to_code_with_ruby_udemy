# the split method return a array

sentence = "This a nice abcdef of the split method"

# by default it split by spaces, but we can choose the argument

p sentence.split

p sentence.split(",")

p sentence.split("nice")



def longest_word(sentence)
    longer = sentence[0]
    sentence.split.each do |word|
        puts word
        if word.length >= longer.length
            longer = word
        end
    end
    longer
end

p longest_word(sentence)

