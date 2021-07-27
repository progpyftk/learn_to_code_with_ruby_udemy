# poiting
a = [1, 2, 3]
b = a

# when we change a, b is poiting to a, so it reflects the changes
a.push(4)
p a
p b

# we can check it using object.id method
p a.object_id
p b.object_id

# note that even if we change b, the a also is pointing to the same place
b.push(5)
p b
p a

# in order of not poiting to same obj, we should do:
a = [1,2,3]
b = a.dup

p a.object_id == b.object_id