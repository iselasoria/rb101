######## DOCUMENTATION ######## 

#Q1 Locate the ruby documentation for methods File::path and File#path. How are they different?
# https://ruby-doc.org/core-2.6.3/File.html#method-c-path     File::path
# https://ruby-doc.org/core-2.6.3/File.html#method-i-path     File#path
# the differente is that File#path returns as a string the pathname used to create a file and 
# the File::path is the string representation of a path. File::path is a class method while
# File#path is an instance method which means class methods are called on a Class while instance methods 
# are called on objects.


# Q2 Assume you have the following;
# https://ruby-doc.org/stdlib-3.0.0/libdoc/date/rdoc/Date.html#method-c-civil
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

-4712-01-01
2016-01-01
2016-05-01
2016-05-13





