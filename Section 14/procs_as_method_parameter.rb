# the following method will receive a Proc as argument
# it will have the same effect as keyword yield

def talk_about(name, &myproc)
    puts "Let me tell somethin about #{name}"
    myproc.call(name)
end

myproc = Proc.new do |name|
    puts "#{name} is a genius"
    puts "#{name} is nice"
end

talk_about("Lorenzo", &myproc)


