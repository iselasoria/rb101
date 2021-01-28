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

#Q3 Consider the following:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

[4,5,3,6]

#Q4 The Array#bsearch is used to search ordered Arrays more quickly than #find and #select
# Assume the following:
a = [1, 4, 8, 11, 15, 19]
#how would you searhc this array to find the first value that is greater than 8 ?

# https://ruby-doc.org/core-2.6.3/Array.html#method-i-bsearch

a.bsearch{|x| x > 8}