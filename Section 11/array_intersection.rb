# intersection
p [1, 2, 3] & [5, 6, 7, 2] & [1, 1, 1, 2]

def custom_intersection (arr1, arr2)
    final = []
    arr1.uniq.each {|each| final << each if arr2.include?(each)}
    final
end

p ["lorenzo", "josenzo"].all? {|each| each.include?("enzo")}