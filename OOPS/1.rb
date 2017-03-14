#  Classes in ruby -> object oriented and classical inheritance

# Given below is an empty class definition.
# All class names have to be pascal cased
class SomeClass

end


# Every class inherits from Object which inherits from Kernel which inherits form BasicObject
puts SomeClass.ancestors

# Let's go ahead an instantiate the class 
someclass = SomeClass.new # methods and functions in ruby doesnt need parenthesis to invoke 

# Let's print the object id of someclass
puts someclass

# Everything in ruby is an object..all Fixnums,strings and floats and booleans