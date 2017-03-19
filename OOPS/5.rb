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

# More on modules 

module Measurements
  def perimeter
    self.sides.inject(0){|sum,x| sum + x }
  end
  def area
    self.sides[0]*self.sides[1]
  end
end

class Square
  include Measurements

  attr_accessor :side

  def initialize(side)
    @side = side
  end

  def sides
    [@side,@side,@side,@side]
  end
end

class Rectangle
  include Measurements

  attr_accessor :length, :breadth

  def initialize(length,breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length,@breadth,@length,@breadth]
  end
end


sq = Square.new 5
puts sq.perimeter
puts sq.area

re = Rectangle.new 5,6
puts re.perimeter
puts re.area