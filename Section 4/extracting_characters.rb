story = "Once upon a time in land far, far way"
p story.length

# ---- Single extraction -------
# the string index starts at position 0
p story[0]
p story[5]
# if negative, the positons starts from the end
p story[-5]
# if it is out of the range, it returns nil
p story[100]

# the slice method is the same that using the brackets
p story.slice(0)
p story.slice(5)
p story.slice(-5)
p story.slice(100)

# --------- Multiple Extraction -----------
story = "Once upon a time in land far, far way"

# starts at position 5 then count 4 positions
p story[5, 4] 
p story.slice(5,4)
p story[0, story.length]

# using range objects
p story[1..10] # .. means including the 10
p story[1...10] # ... not including the 10
p story.slice(1..10)




