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

######### EASY 2 #########

#Q1 How old is Teddy? Build a program that randomyl generates and prints Teddy's age. Age should be between 20 and 200.

def age()
  teddy = rand(20..200)
  p "Teddy is #{teddy} years old!"
end

#modify to ask for name and default to teddy

def age(who="Teddy")
  puts "Enter a name: "
  name = gets.chomp()
  age = rand(20..200)
  p "#{name} is #{age} years old."
end

age()

# Q2 How big is the room? Build a program that asks a user to the length and width of a room in 
# meters and then displays teh area opf the room in both square feet and suare feet.

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f
puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

area_sqm = (length * width)
area_sqft = area_sqm * 10.7639 

puts "The area is #{area_sqm.round(2)} square meters or #{area_sqft.round(2)} square feet."


#Q3 Create a simple tip calculator. The program shjould prompt for a bill and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount.

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip?"
tip = gets.chomp.to_f
calc_tip = (bill * tip/100)
calc_bill = bill + calc_tip

puts "The tip is: #{calc_tip}."
puts "The total is #{calc_bill}."

#Q4 Build a program that displays when the user will reture and how many years she has to work till retirement.
puts "What is your age: "
curent_age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i
left = retirement_age - curent_age

t = Time.new()
current_year = t.year
retirement_year = current_year + left

puts <<-MSG
  It is #{current_year}. You will retire in #{retirement_year}.
  You have only #{left} years of work to go.
MSG

#Q5 Write a program that will ask the user for a name. The program will then greet the user, if the user gives name! then the computer yells back at the user

puts "What is your name?"
name = gets.chomp
if name.include?("!")
  puts "HELLO #{name.upcase} WHY ARE YOU SCREAMING?"
else
  puts "Hello, #{name}."
end

#Q6 print all odd numbers from 1 to 99, inclusive each on a separate line.
val = 1
while val <= 99 
  puts val
  val += 2
end 

#Q7 Print all even numbers from 1 to 99 inclusive, each on a separate line.

val = 1
while val <= 99
  puts val if val.even?
  val += 1
end

#Q8 Write a program that asks the user to enter an integer greater than 0, then asks if the user wants 
#to determine the sum or product of all numbers between 1 and the entered integer.

def sum(number)
  total = 0
  1.upto(number) {|value| total+= value}
  total
end

def product(number)
  total = 1
  1.upto(number) {|value| total *= value}
  total
end 


puts "Enter an integer greater than 0: "
my_int = gets.chomp.to_i
puts "Do you want to add or multiply the numbers from 1 to #{my_int}."
computation = gets.chomp

if computation == "multiply"
  puts "The product of the integers between 1 and #{my_int} is #{product(my_int)}"
elsif computation == "add"
  puts "The product of the integers between 1 and #{my_int} is #{sum(my_int)}"
end

#Q9 consider the following code:
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# what does the following print. Explain:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# this prints BOB and BOB on a second line. This is because of the bang, it mutates the 
# string and when we go to the top to look at name again, we find it is now upcase.

#Q10 what will the following code print?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
# we end up with Moe
# [Larry,CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo]
# even though we only changed array1, since array2 referfenced array1 it also carries its changed.