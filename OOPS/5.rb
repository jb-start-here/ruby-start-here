# modules are mixins or class like objects that can act as templates or can be included in other classes


module Mixin

    def some_method
        puts "some_method"
    end

    # self keyword denotes to the current object itself
    def id
        puts "#{self.name}!!!"
    end
    

end


class Animal
    include Mixin

    attr_accessor(:name, :species)

    def initialize(name, species)
        @name = name
        @species = species
    end
    # Defining methods with self. prefix turn them into clas methods instead of instance method equivalent to java's static method
    def self.class_method
        puts "Animal Method"
    end

end



ziggy = Animal.new("ziggy","dog")
puts ziggy.species
ziggy.some_method
ziggy.id

Animal.class_method


class Parrot < Animal

end


willy = Parrot.new "willy","parrot"
Parrot.class_method # Still works -> prints "Animal Method"

willy.id # puts "willy!!!"