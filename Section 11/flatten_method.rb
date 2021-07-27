# the flatten method removes the nested arrays 
# it always return one dimension array

registratios = [
    ["A", "B", "C"],
    ["C", "D", "E"],
    ["F"],
    ["A", ["H", "I"]]
]
 p registratios.flatten
 p registratios
 p registratios.*