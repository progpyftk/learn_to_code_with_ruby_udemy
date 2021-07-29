def word_count(string)
    hash = {}
    str_arr = string.split
    str_arr.each do |each_word|
        unless hash.key?(each_word)
            hash[each_word] = str_arr.count(each_word)
        end
    end
    hash
end

p word_count("lorenzo é um cara legal bem legal eh o lorenzo")