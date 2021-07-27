# it removes the occurencies of one array elements in another array
p [1,1,1,2,2,2,3,3].-([1,3])
p [1,1,1,2,2,2,3,3] - [1,3] # note that is removes all the occurrencies

def custom_subtraction(arr1, arr2)
    arr1.each {|each| final << each unless final.include?()}
end
