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
  reversed_sentence=''
  index = 0
  while index < mystr.length
    puts index
    #eversed_sentence = mystr[index] #+ reversed_sentence
    index += 1
  end 
  return reversed_sentence
end 

puts reverseme("The grey cat sat by the window.")