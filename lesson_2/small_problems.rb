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

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

#Q4 Write a method that counts each occurance in the array.
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
=begin 
start counters of each ttype
iterate 
each time it finds one, add counter for that
=end

def count_occurrences(vehicles)
  occurences = {}

  vehicles.uniq.each do |v|
    occurences[v] = vehicles.count(v)
  end

  occurences.each do |v, c|
    puts "#{v} => #{c}"
  end

end 
puts count_occurrences(vehicles)

#Q5 Write a method that takes one argument, a string, and returns the words in reverse order

def reverseme(mystr)
  mystr.split.reverse.join(' ')
end 

puts reverseme("The grey cat sat by the window.")

# Q6 Write a method that takes one arguments, a strnig containign one or more words, and returns the given string with words that contain five
# or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one words in present.
def reverseme(mystr)
  words = []
    mystr.split.each do |word|
      word.reverse! if word.size >=5 
      words << word 
    end
    words.join(' ')
end 

puts reverseme("The grey cat sat by the window.")

# Q7 Writre a method that takes one arg, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The lengths should match the integer given.
# puts stringy(6) == '101010'
# PEDAC#
# Problem
## define a method that takes an integer as argument.
## returns a string of alternating 1s and 0s.
## string must start with 1
## string legth is the value of integer param
# Example
## 

# Data Structures
## starts with an integer
## some sort of iteration to print the items based on value of string
## potentially the fence algo?
# Algorithm
## take the number passed as param and use it to guide the iteration
## print 1 and 0 for the length of the number in param

def stringy(my_int)
  numbers = []
  my_int.times do |item|
    number = item.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end 

# Q8
# write a method that takes an array and returns the sum of the numbers in that array.
def avg(arr)
  sum = 0 
  arr.each do |num|
    sum = sum + num
  end
  avg = (sum/arr.size)
  avg
end
puts avg([10,3,8])

#Q9 Write a method that takes one argument, a positive integer, and returns a sum of its digits.

def sum(number)
  sum = 0
  string_num = number.to_s.chars
  string_num.each do |digit|
    sum += digit.to_i
  end
  sum
end

puts sum(2345)

#Q10 Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
# if the boolean is true, the bonus should be half of the salary. If false, the bonus should be zero.

def bonus(salary, qualify)
  if qualify == true
    bonus = salary / 2
    bonus
  else
    bonus = 0 
  end
end

p bonus(15000, true)
p bonus(15000, false)

#refactored code:
def bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end 

puts bonus(400000,true)
puts bonus(400000,false)