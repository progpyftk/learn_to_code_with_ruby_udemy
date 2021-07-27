# return an array with duplicated values removed
numbers = [1,1,2,2,3,3,3,3,4,4,4,5,5,5,6]
p numbers.uniq

def custom_uniq(my_arr)
    new_arr = []
    my_arr.each {|each| new_arr << each unless new_arr.include?(each) }
    new_arr
end
 p custom_uniq(numbers)
