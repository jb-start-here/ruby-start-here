# the old way - using alias_method (created a with and without )

# doggo.rb - maybe a gem file or another library
module Doggo
  class Chihuahua
    def bark
      "woof!"
    end
  end
end

# now you want to augment/modify good_boi? method
# somewhere else in our_code.rb

module Doggo
  class Chihuahua

    def bark_a_lot
      3.times.collect do
        bark
      end
    end

  end
end

puts Doggo::Chihuahua.new.bark_a_lot # woof! woof! woof !
puts Doggo::Chihuahua.new.bark # woof!


module Doggo
  class Chihuahua
      # aliaing the method name - alias the second argument with the first argument
      alias_method :bark_a_lot, :bark

  end
end

puts Doggo::Chihuahua.new.bark_a_lot# woof!
