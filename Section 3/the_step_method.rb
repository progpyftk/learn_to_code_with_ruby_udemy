p 0.step(100, 2) { |number| puts number }

# limits the result by a determined number, to: -10
p 10.step(by:-2, to: -10) { |number| puts number }

# limits the resullt by the quantity of numbers, in this case: 4 using take(4)
p 10.step(by:-2).take(4)