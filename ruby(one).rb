# -----------------------------Lesson-1----------------------------------
# printing, reading and variables
print "Hello There. This is my first ruby program\n"

# print doesnt print new line at end but 'puts' does

# puts -> put string onto stdout
# putc -> put char into stdout

puts "First number:"
# gets -> get string and to_i converts to int
a = gets.to_i

puts "Second number:"
b = gets.to_i

# variables types are automatically inferred in ruby and you dont have 
# to mention them explicitly.

print "your answer is : "
# puts automatically converts int args to strings 
# so that it can be printed on screen
puts a+b

# or

puts a.to_s + " + " +b.to_s + " = " + (a+b).to_s
# to_s converts to string

# -----------------------------Lesson-2----------------------------------
# functions and methods


# Let's write some functions and methods
def greeting
    puts "Hello from a function"
end

# To invoke the above function definition we just have to 
# mention the function name. We don't even have to
# use parenthesis to invoke it
greeting

# functions with arguments passed in

def saySomething(something)
    puts something
end

saySomething "Hasta la vista baby!"

# multiple arguments
def foo(name, age)
    puts "I am " + name.to_s + ". I am " + age.to_s + " years old."
end
# Invoking a multiple argument function
foo "Eddy",31