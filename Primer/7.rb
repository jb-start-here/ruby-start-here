# Working with key word arguments and splat operator in ruby

# A common patter in ruby when using options for a function was to put the whole thing in a hash
def person(name, option_hash = {})
  p "name given is #{name}"
  p option_hash.fetch(:age, 0)
  p option_hash.fetch(:fingers, 10)
end

person "john", {fingers: 9, age: 45}
person "jane", age: 38
person "kylo", fingers: :ten

# In ruby 2.0+ we can use key word arguments to do away with fetching

# Can pass in arguments in any order, also specify defaults
# if you dont pass in defaults then it becomes required arguments
def another_person(name, age: 0, fingers: 10)
  p "name given is #{name}"
  p :age
  p :fingers
end


another_person "miro", fingers: 22, age: 7