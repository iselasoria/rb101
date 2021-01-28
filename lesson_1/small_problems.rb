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

#Q5 what does each statement puts?

a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
# https://ruby-doc.org/core-2.6.3/Array.html#method-i-fetch

# ['a','b','c','d','e']
# IndexError
# "beats me"
# 49

#Q6 what does this code print?
5.step(to: 10, by: 3) { |value| puts value }

# 5, 8
# 10 is the threshold  so it breaks the loop, and we increment by 3 in each iteration

#Q7 input into irb
s = 'abc'
puts s.public_methods.inspect

# how would you exclude methods ineherited from Object, BasicObject, and Kernel ?
puts s.public_methods(false).inspect 


#Q8 Run this in irb:
a = [5, 9, 3, 11]
puts a.min

#SOLUTION 
puts a.min(2)

#Q9 Sometimes, the documentation is going to leave you scratching your head. 
# In a very early assignment you were tasked with writing a program that loads some text from a YAML file. 
# We do this with YAML::load_file
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# https://ruby-doc.org/stdlib-3.0.0/libdoc/psych/rdoc/Psych.html#method-c-load_file
