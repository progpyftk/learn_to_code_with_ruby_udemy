# print the product of element x its index, only if index pos is greater than the element

fives = [-1, 1, 2, 3, 5, 7, 3, 4, 8, 9]

fives.each_with_index do |each, index|
    if index > each
        puts "Element: #{each}  Index: #{index}"
        puts "Element x Index = #{each * index}"
    end
end


