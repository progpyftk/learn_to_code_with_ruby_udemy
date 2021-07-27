# the UNION combine the arrays and exclude the duplicated elements
p [1,1,2,2,3] | [6,6,6,6,7,7,7] | [8,8,10,10]

# the above is a sugar sintax for the [1,1,2,2,3].|[[6,6,6,6,7,7,7]]

def custom_union(arr1, arr2)
    arr1.concat(arr2).uniq
end

p custom_union([1,1,2,2,3],[6,6,6,6,7,7,7] )
