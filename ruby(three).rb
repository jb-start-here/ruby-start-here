# -----------------------------Lesson-5----------------------------------
# funking with numbers

puts 5+6*2/3
puts 22/10
puts 22/10.0
puts (22/10.0).to_f
# to_f means to float

puts 45%10
puts 45/10

puts 2.even?
puts 3.odd?

# pretty standard stuff..if you havent guessed by now methods with '?' at
# the end will return a boolean always
puts "these are conditional operators"
# conditional operators
puts 10 >= 4 #true
puts 23 <= 10 # false
puts 10 == 10 # true

# generating random numbers

puts rand
# between 0 and 1

puts rand(10)
# between 0 and 10

# to_i is convert to integer or a fixnum in ruby's context
puts "5".to_i.odd?


# check out this cool stuff
x = "5"
x = x*4
puts x # output: "5555"
bool = x.to_i.even? 
puts bool # false


# check this even cooler stuff
10.times {puts "hello"} # prints hello 10 times
# aww yeahh

# -----------------------------Lesson-6----------------------------------
# how to loop through a loop

15.times {puts "yes"}

15.times do |i|
    puts i
end

for i in 1..5
    puts "hello #{i}"
end

5.upto(15) do |i|
    puts "upto #{i}"
end

5.upto(15) {puts "upto"}

puts '---------------'
15.downto(5) do |i|
    puts "upto #{i}"
end






