numbers = [1, 2, 3, 4, 5, "apple", 6, 7, 8, 9,"peach", 10, ["a", "b", "c"], 14]

p numbers.size
p numbers.length

# count needs argument - which count the number of the argument occourences
p numbers.count(2)
p numbers.count("peach")

# the empty? method
p [1, 2, 3].empty?
p [].empty?
p [nil, nil, nil].empty? # nil does not count as empty

# the method nil? also does not work, because it just return true for Nilclass objects
p [nil, nil, nil].nil?

# .first and .last. methods
p numbers.first
p numbers.last
# both accept arguments. The number os elements returned
p numbers.first(4)
p numbers.last(4)

def custom_first(arr, num=0)
    return arr[0] if num == 0
    arr[0...num]
end

p custom_first(numbers, 100)
p numbers.first(100)


