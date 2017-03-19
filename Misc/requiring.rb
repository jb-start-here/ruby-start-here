#  this looks up ruby std lib dir or the gem directory and imports libs from there
# require "file or gem name"

# for files in the same dirs we use absolute path 
# just like javascript

puts "\t-----------from require statements ------------ "


require "./namespacing"

require "./namespacing"


# or we can use 

puts "\n\n\t-------from require relative statements -------"


require_relative "namespacing"  # <- same effect


# require statements load file only once so mutliple requires only execute once

# if we use load statements however it executes however number of times we write the load statements

puts "\t\n\n\n\n\n\t-------------from load statements ------------- "

load "./namespacing.rb"

load "./namespacing.rb"



puts "\t\n\n\n\n\n\t-------------from current file ------------- "

arr = AnotherModule::Array.new
puts arr.size