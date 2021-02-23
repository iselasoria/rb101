###### EASY 3 ######

#Q1 Write a program that solicits 6 numbers from user then prints a message
# that describes whether or not the 6th numbers appears amongst the first 5
numbers = []

puts "Enter the first number: "
numbers << gets.chomp.to_i
puts "Enter the second number: "
numbers << gets.chomp.to_i
puts "Enter the third number: "
numbers << gets.chomp.to_i
puts "Enter the fourth number: "
numbers << gets.chomp.to_i
puts "Enter the fifth number: "
numbers << gets.chomp.to_i
puts "Enter the last number: "
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

# Q2 write a program that asks for two positive integers and prints the results of the following operations
# on those two numbers: addition, subtraction, product, quotient, remainder and power.

print ("Enter the first number: ")
first = gets.chomp.to_i
print("Enter the second number: ")
second = gets.chomp.to_i

addition = first + second
puts "#{first} + #{second} = #{addition}"
subtraction = first - second
puts "#{first} - #{second} = #{subtraction}"
product = first * second
puts "#{first} * #{second} = #{product}"
quotient = first / second
puts "#{first} / #{second} = #{quotient}"
remainder = first % second
puts "#{first} % #{second} = #{remainder}"
power = first ** second
puts "#{first} ** #{second} = #{power}"

#Q3 Write a program that will ask a user for input of a word or multiple words and give back the number of chars.
# spaces are not to be counted as char.

puts "Please enter a word or words: "
answer = gets.chomp
characters = answer.delete(' ').size
puts "The number of characters in #{answer} is #{characters}."

#Q4 Create a method that takes two arguments, multiplies them togetherm and returns the result. 
def multiply(first, second)
  first * second
end

#Q5 Using the previous method, write a method that computes the square of its argument.
def square(first)
  multiply(first, first)
end

#Q6 Write a method that returns the exclusive of two arguments. It returns true if exaclty one of its argumentsd is truthy
# false, otherwise. We're looig for boolean values.

def xor?(val1, val2)
  return true if val1 && !val2
  return true if val2 && !val1
  false
end

#Q7 Write a method thatretuns an array that contains every other element in an array that is passed in as an arg.
# the values in the returned list should be those values that are in the 1st, 3rd, 5th and so on elements of an array.
def oddities()

end

myarr = [1,2,3,4,5,6]

myarr.each do 
  |item| puts item
end 
