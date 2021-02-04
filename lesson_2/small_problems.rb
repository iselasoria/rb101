############# EASY 1 ################

#Q1 Write a method that takes two arguments, a string
# and a positive integer, and prints the string
# as many times as the integer indicates.

def repeat(mystring, mynum)
  mynum.times do
    puts mystring
  end
end 

repeat("Hello", 3)

#Q2 Write a method that takes on integer argument, which
#can be positive, negative or zero. This method returns true
# if the nymber's absolute value is odd. You can assume that
# the argument is valid integer value.

def is_odd(number)
  if number % 2 != 0
    true
  else
    false
  end
end

puts is_odd(2)
puts is_odd(5)
puts is_odd(-17)
puts is_odd(-8)
puts is_odd(0)
puts is_odd(7)

#Q3 List of digits. Write a method that takes one argument,
# a positive integer, and returns a list of the digits in the number.

def digit_list(mydigit)
  myarray = []
  myarray << mydigit.split('')
end 

puts digit_list(1234)