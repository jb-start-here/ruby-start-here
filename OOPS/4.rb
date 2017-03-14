# Lets talk about inheritance
# '<' is used to show inheritance...it takes the place of extends from javascript

class Animal
    attr_accessor :name, :type

    def initialize(name,type)
        @name = name
        @type = type
    end

    def speak
        puts "*noise*"
    end

end

animal = Animal.new "vinny", "land"
puts animal.name
puts animal.type

class Dog < Animal

    def speak
        puts "woof"
    end
end

class Starfish < Animal

end

class Human < Animal

    def speak
        puts "Hi! my name is #{@name}"
    end
end


scruffy = Dog.new "scruffy","land"
starvy = Starfish.new "starvy","sea"
jacob = Human.new "Jacob","Land"


puts scruffy.type
scruffy.speak
puts starvy.name
jacob.speak