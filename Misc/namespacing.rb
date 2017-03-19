# managing namespaces and name collision using modules and '::' operator
# Let's create another version of Array class

# modules can have classes inside them too
module AnotherModule
  # Let's write our own random weird implementation of an array whose size is always 500
  # notice this doesnt collide with the ruby's global Array Class
  class Array
    attr_accessor :size
    def initialize
      @size = 500
    end
  end
end

# We use the "::" operator to 
our_array = AnotherModule::Array.new
ruby_array = Array.new

puts our_array.size # <- 500
puts ruby_array.size # <- 0


puts our_array.class
puts ruby_array.class