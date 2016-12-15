# -----------------------------Lesson-3----------------------------------
# Let's get to exploring data types and default ruby lang API avaiable to these Data types

puts "I am a string".class
#String

name = "Raymond"
puts name.class
#String

puts 1.class
#Fixnum

# puts name.methods
# Prints the methods available to every String in ruby.

puts "\n\n"

# puts 1.methods
# Prints the mthods available to every Fixnum in ruby.

# Everything is an object in ruby. Every assignment points to a memory location.
# To better understand it see below
# variable1 = variable2 => variable1 = &variable2;
anotherName = name

name = "Ray"
# Name now points to a new location containing "Ray" but anotherRay is 
# still pointing to the same memory location that name used to 
# point to.


puts anotherName
#still Raymond

# -----------------------------Lesson-4----------------------------------
# Template Strings

# we can use double or single quotes to simplify
mike = 'tyson'
puts mike
mike = "wazowski"
puts mike

# templating string work only with double quotes
# and the syntax is to use a pound sign followed by curly braces
puts "my name is #{mike}"
puts 'my name is #{mike}' # this will not work at all

# use length method to get size
puts "four".length

# use nil to get if something is nil (for the sake of java programmers it's null) and empty to determine
# if something is empty;
puts "four".nil?
puts "five".empty?
puts nil.nil?
puts "".empty?

# btw the name of the method itself is 'nil?' and 'empty?' i.e the question mark is a part of the name.

puts "Enter name"
naam = gets # chomp removes the trailing newline character from input
puts "yuor naam es #{naam} hahaha"
naam = naam.chomp
puts "yuor naam es #{naam} hahaha"

# reverse method reverses the string
puts "taco".reverse