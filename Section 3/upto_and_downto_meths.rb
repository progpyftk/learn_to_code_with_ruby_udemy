5.downto(1) {|count| puts "countdown #{count}"}

# using do - end
5.downto(1) do |count|
    puts "countdown #{count}"
end

5.upto(20) { |index| puts "on up #{index}"}