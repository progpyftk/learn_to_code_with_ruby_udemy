def speak_the_truth
    yield ("Boris") if block_given?
end
speak_the_truth { |name| puts "#{name} is brilliant" }

# now the method will receive an argument that will be passed to yield and it passes to block
def speak_the_truth_2(name)
    yield(name) if block_given?
end
speak_the_truth_2("Lorenzo") { |name| puts "#{name} is a nice guy"}
speak_the_truth_2("Raul") { |name| puts "#{name} is a nice guy"}
speak_the_truth_2("Mary") { |name| puts "#{name} is a nice guy"}

# we can even use Proc
name_block = Proc.new { |name| puts "#{name} is a nice guy" }
speak_the_truth_2("Lorenzo", &name_block)
speak_the_truth_2("Raul", &name_block)
speak_the_truth_2("Mary", &name_block)

# lets write our custom map method
def my_map(my_arr)
    c = 0 # the counter
    acc = [] # new array
    until c == my_arr.length
        acc << (yield my_arr[c]) # here we must use the parenthesis because of operator precedence
        c += 1
    end
    acc
end
p my_map([1,2,3,4]) { |each| each * 10 }



