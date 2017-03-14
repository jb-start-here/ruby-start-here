# Let's rewrite the previous class 
class AnotherUser

    def initialize(name,age)
        @name= name
        @age = age
    end

# The getter and the setter statements can be replace one line below
# attr_accesor is a policy (essentially just a function thats take variable names as symbols as arguments)
#  and name and age are two atrributes/field we assign the policy too
    attr_accessor :name, :age
    # remember ruby function syntax doesnt even need parenthesis 

# There are also attr_reader and attr_writer. 
# 1. attr_accessor dynamically both reading and writing
# 2. attr_writer only allows writing and not reading
# 3. attr_reader only allows reading

# attr_accessor(:name,:age) is same as 

# attr_writer(:name,:age)
# attr_reader(:name,:age)

end

john = AnotherUser.new "john wick", 29


#  you can now get field variables or attributes using 
puts john.name
puts john.age


# you can set them using
john.name = "John Wick II"
john.age = 32

puts john.name
puts john.age