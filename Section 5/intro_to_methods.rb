# every method starts with def keyword then ends with end kw
def introduce_myself
    puts "I am a method"
end

# a method is a message sent to a receiver. We use to say "invoke" or "call" the method.
# in this the self object is the receiver of the message "introduce_myself"
p self.class
self.introduce_myself

