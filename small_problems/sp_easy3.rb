###### EASY 3 ######
#Write a program that solicits 6 numbers from user then prints a message
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


 