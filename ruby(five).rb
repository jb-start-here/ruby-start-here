# -----------------------------Lesson-9----------------------------------
# Hash data structure

# all hashes are defined in curly braces
hash = {"name"=>"Ronaldo","number"=>7,"position"=>"LW","teams"=>["Real Madrid","Portugal"]}
# '=>' is called a hash rocket.


# in order to access it you can use square brackets ->
name = hash["name"]
puts name
for team in hash["teams"]
    puts "Plays for #{team}"
end

# Another way to define a hash structure is to use symbols for keys. there just simply a non string tokens 
# theyre not variables in the sense that they dont usually store anything or point to any thing
# theyre always preceded by a comma

# like this -> {:a=>1, :b=>2, :c=>3, :d=>4}

# this is a shorthand version of creating a hash with symbols a,b,c,d as keys
hash2 = {a:1,b:2,c:3,d:4} 


puts hash2
# {:a=>1, :b=>2, :c=>3, :d=>4}
# ':a' -> the ":" here denotes that the it is a symbols

puts hash2[:a] # -> to access an entry whose key is a symbols
hash2[:name] = "lin"
hash2[:truth] = true
puts hash2
# {:a=>1, :b=>2, :c=>3, :d=>4, :name=>"lin", :truth=>true}

# to delete an entry

hash2.delete(:name)
puts hash2


# -> Iterate through a hash data structure

hash2.each {|k,v| puts "key is #{k} and value is #{v}"}

hash2.each do |k,v|
    puts "key is #{k} and value is #{v}"
end

# this is a ruby specific special syntax to use an if statement in one line itself in a block '{}' statement

nums = {a:1,b:2,c:3,d:4,e:5,f:6,g:7}

nums.each {|k,v| puts "Even value #{v} with key #{k}" if v.even?} # see how the if can be put right after 
# the action statement. Ruby reads a lot like english

puts nums.select {|key,val| val.even?}


# hash is mutated for selected! whereas select does not mutate
nums.select! {|key,val| val.even?}

puts nums
# {:b=>2, :d=>4, :f=>6}


nums.select! do |x,y|
  y<=4
end
puts nums

# -----------------------------Lesson-10---------------------------------
# misc and looping using while/for/until/loop
# '\' is used to to continue a line of code into its next line

puts 'big line of code '\
     ' and continuation of it'

# -> one way to do it using loop keyword
# loop do
#   puts "All work and no play makes Jack a dull boy."
# end

# -> another way but this time with a breaking 
loop do
  puts "All work and no play makes Jack a dull boy."
  break if rand > 0.9
end

# loop also needs to be followed by do keyword because it really is just an iterator and all 
# iterators can be patched with a do key word 

# -> two more ways of using a while statement 
while rand < 0.9
  puts "All work and no play makes Jack a dull boy."
end

begin
  puts "All work and no play makes Jack a dull boy."
end while rand < 0.9


# -> using until keyword
until rand > 0.9
  puts "All work and no play makes Jack a dull boy."
end

begin
  puts "All work and no play makes Jack a dull boy."
end until rand > 0.9

# -> single line versions
puts "All work etc." while rand < 0.9
puts "All work etc." until rand > 0.9


# -> using a plain old for loop
fruits = ["apple", "banana", "cherry"]
for f in fruits
  puts "I love #{f}!"
end