# Lets define a class called User
class User

    # The constructor for all classes in ruby is named as initialize
    def initialize(name)
        # Member variables of fields must be initialized in this constructor
        # All field variables and fields must have an '@' before them to differentiate them from normal variables and fields
        @name = name
    end

    # another random method or a member function
    def login
        puts "Login successfull"
    end

end

# Lets instantiate this now
freddy = User.new "freddy krueger"
jason = User.new "jason vorhees"


puts "The object id for freddy is ", freddy
puts "The object id for jason is ", jason

freddy.login # Puts 'Login successfull'
jason.login # puts 'Login Successfull'



# We cant use the member variable outside of the class definitions outside the class definition
# Unless you also provide a setter and getter method for each of the variable (Pretty tedious but it will be solved soon)


class AnotherUser
    def initialize(name,age)
        @name = name
        @age = age
    end

    # This is how you define a getter
    def get_name
        # The last sentence in a function is always returned so no need to mention return
        @name
    end

    # Getter names dont have to be snake_cased or prefixed with get_ but it is good practice
    def howOld
        @age
    end


    # Inorder to define a setter we use this syntax
    def set_name=(name)
        # '@' represents the member variable
        @name = name
    end

    def thisOld=(age)
        @age = age
    end

end

leatherface = AnotherUser.new("Leatherface",25);
puts leatherface

puts leatherface.get_name
puts leatherface.howOld



# BIG CAVEAT => SETTERS ARENT METHODS WHEN DEFINED WITH '=' syntax
# You have manually set the field variables like so
leatherface.set_name = "cold blooded killer"
leatherface.thisOld  = 50


puts leatherface.get_name
puts leatherface.howOld


# However there is a way to not write all this plumbing code...