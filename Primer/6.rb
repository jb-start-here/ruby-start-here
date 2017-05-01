# -----------------------------Lesson-11----------------------------------
# understanding iterators in ruby.

def return_iterator
  (1..15).to_a
end

return_iterator.each do |i| 
  puts "one"
end


# There are mainly two different kinds of structures we need to understand.
# 1 -> the do....end structure 

(1...7).each do ||
  puts "do...end!!"
end


5.times do |i|
  puts i
end

5.upto(10) do |i|
  puts "upto #{i}"
end

# 2 -> the curly braces {} structure

(1...7).each {puts "curly braces!!"}

5.times {|i| puts i}


5.upto(10) { |i| puts "upto #{i}"}

# When we have implement our own functions that can play well 
# with both the kinds of structures above , we need yield keyword


# just like java script yield keyword pauses execution to receive and execute another piece of code passed to it via a do end or a curly brace block
# let's try and work with one by creating an infinite loop!

def infinite_loop_creator
  while 1 do
    yield
  end
end

# infinite_loop_creator { puts "infinite"} 

# or

# infinite_loop_creator do
#   puts "infinite"
# end

# ^ they print te word infinte infinite times

def finite_loop_creator(number)
  while number>0 do
    yield
    number -= 1
  end
end

finite_loop_creator(5) { puts "hello" }
# in this syntax you have to use parenthesis

# or 

finite_loop_creator 5 do 
  puts "hello there"
end


# Let's try passing in paramenters to the do end or the curly 
# brace structure by passing in an argument to the yield functions

def finite_loop_creator_2(number)
  while number > 0 do
    yield number
    number -= 1
  end
end

finite_loop_creator_2 5 do |i|
  puts "Hello there - #{i}"
end

# Let's extend the default Array Class 
class Array
  def reverse_iterate
    current_index = self.size-1
    while current_index >= 0
      yield self[current_index]
      current_index -= 1
    end
  end
end

[1,2,3,4,5,6,7,8,9].reverse_iterate do |i|
  puts "reverse iterating #{i}"
end

# There is a default method called block_given? from kernel object itself in ruby which is boolean which 
# tells us whether block is gvien or not

class Array
  def reverse_iterate2
    if block_given?
      current_index = self.size-1
      while current_index >= 0
        yield self[current_index]
        current_index -= 1
      end
    else
      puts self.reverse
    end
  end
end


[1,2,3,4,5].reverse_iterate2
# This directly prints the reverse iteration 

[1,2,3,4,5].reverse_iterate2 {|i| puts "reverse_iterate2 #{i}"}



#  some notable things
# -> you can pass in multiple arguments to yield keyword (for example the iterators in the hash object takes in k,v)
# -> you can use spread like operator for example "yield a, b, c, d" and in the do block you can do |i,*opts| which means i = a and opts = [b,c,d]
# -> blocks can be passed aroun like arguments too

def crazy_method(&block)
  another_crazy_method block
end


def another_crazy_method(block_argument)
  x = 25
  block_argument.call x
end


crazy_method {|i| puts "closures are fun!!! #{i}"}

# This gives us the feature of closures in ruby!!

# -----------------------------Lesson-12----------------------------------
# lambda expressions

# lambda is a piece of code or a block of code that we write and store in a variable. we can execute the piece of code anytime
# by call method


l = lambda { return "lambda"}
puts l.call

lamb = lambda do |i|
  # the last expression is always returned
  "#{i} has been received by the lamb"
end

puts lamb.call 5

lamb2  = lambda { |i| "#{i} has been received by the lamb" }

puts lamb2.call 5

yoda = lambda do |word|
  if word == "try"
    "there is no try"
  else
    "do or do not"
  end
end

puts yoda.call "what"
puts yoda.call "try"

# A lambda is a piece of code that you can store in a variable, and is an object. 
# Block : The simplest explanation for a block is that it is a piece of code that can't be stored in a variable 
# and isn't an object. It is, as a consequence, significantly faster than a lambda, 
# but not as versatile and also one of the rare instances where Ruby's "everything is an object" rule is broken.