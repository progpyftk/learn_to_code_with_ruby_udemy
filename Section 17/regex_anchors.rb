# an anchor is a specific symbol that ties a match to a specific point within the string
# example
poem = "99 bottles of beer of the wall, 99 bottles of beer"
p poem.scan(/\d/)
p poem.scan(/\d+/)

# if I wanted to search only the beggining? we need to use \A before what we are looking for
p poem.scan(/\A\d/)
p poem.scan(/\Ab/) # there is no "b" at the beggining

# if I wanted to search only the end? we need to use \z after what we are looking for
p poem.scan(/r\z/) # >> ["r"]
p poem.scan(/\d\z/) # >> []
p poem.scan(/eer\z/) # >> ["eer"]