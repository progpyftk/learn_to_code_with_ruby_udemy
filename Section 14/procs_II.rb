# remebem that a block is not an object, but a Proc is.

my_proc = Proc.new { p "hello i am lorenzo"}

# proc usage example:
2.times(&my_proc)

# proc can be called
my_proc.call

# passing a proc to a method with another arguments
def speak_the_truth(name)
    yield(name) if block_given?
end
name_block = Proc.new { |name| puts "#{name} is a nice guy" }
speak_the_truth("Lorenzo", &name_block)

# passing a ruby method as a Proc
# we already know how to do this:
p ["1","2","3"].map {|each| each.to_i}

# but there is a shorter way to do it - passing the method as proc
# we must pass the method name as a symbol and with the &
p ["1","2","3"].map(&:to_i)

p [1,2,3,4,5,6].map.select{|each| each.even?}
p [1,2,3,4,5,6].map.select(&:even?)

