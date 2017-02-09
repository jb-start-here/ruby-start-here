# -----------------------------Lesson-7----------------------------------
# Let's do functions and branching


def aRandomMethod
    puts "Totes Random"
end

aRandomMethod


def AnotherMethod(value)
    puts "the value is #{value}"
end

AnotherMethod(5)
AnotherMethod 10


# much expressive such wow


# Let's do branching
# chomp cuts the trailing newline from input
puts "Enter a number"
number = gets.chomp.to_i
if number.even?
    puts "Number is even yo"
elsif number >= 15
    puts "Number is greater than or equal 15"
else
    puts "Number is odd ok and also not greater than equal to 15"
end

# Just read through these
if number.even? and number % 5 != 0
    puts "even and not a multiple of 5"
else
    puts "ok"
end

# -----------------------------Lesson-7----------------------------------
# Arrays, induction variables and iterating through them

a = [1,2,3,4,5]
puts a[1]
b = ["s","n","o","o","p"," ","d","o","g","g"]
c = [0,1,"s",["x","y"],a,b]

# puts a
# puts b.include?(420)
# puts a.include?(5)
# puts a.shuffle
# puts b
# # reverse methods prints it in reverse but doesnt actually mutate the actual array
# puts a.reverse

# # reverse! method mutates the actual array in the memory
# puts a
# a.reverse!
# puts a
# puts b.shuffle!


# to_a method converts a range to an array
(1..100) # -> this is a range btw

a = (0..25).to_a
# a is an array of consecutive numbers from 0 to 25 and 26 is its length
b = (1..100).to_a.shuffle!
# b is an array of random numbers from 1 to 100 and 100 is its length


a = [0,1,2,3,4,5]
a << 25 # shovel operator
# a -> [0,1,2,3,4,5,25]
a.push(30)
# a -> [0,1,2,3,4,5,25,30]
a.pop # returns 30
# a -> [0,1,2,3,4,5,25]
a.unshift("joel")
# a -> ["joel",0,1,2,3,4,5,25]
a << 25
a << "joel"
# a -> ["joel",0,1,2,3,4,5,25,25,"joel"]
a.uniq # or a.uniq!
# a -> ["joel",0,1,2,3,4,5,25]
a.join
# => "joel01234525
a.join(" ")
# => "joel 0 1 2 3 4 5 25"


puts "~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~"

# how to iterate through an array
a = [0,1,2,3,4,5,6,7,8,9]

# apart from standard for loop and induction variable

# method 1
a.each {|i| puts i }
# method 2
a.each do |i| # do..end is one block of code same as putting it in {} 
    puts i
end

# method 3
for i in a
    puts i.even?
end

# more examples ->
x = ["h","o","l","a"]
for things in x
    puts "I am a #{things}"
end

x.each {|things| puts "I am a #{things}"}
x.each do |things|
    puts "I am a #{things}"
end

# select method
# it works like filter in javascript
puts a.select {|number| number.even?}
# a.select returns an array ( subarray of a containing only even numbers)


# same can be done if by using  multiple other ways
puts "==========="
a.each do |i|
    if i.even?
        puts i
    end
end

puts "==========="
a.each {|i| puts i if i.even?} # check out the special syntax


puts "==========="

for i in a
    if i.even?
        puts i
    end
end