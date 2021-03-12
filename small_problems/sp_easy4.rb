##### EASY 4 #####

#Q1 
=begin
Write a method that takes two strings as arguments, 
determines the longest of the two strings, and then 
returns the result of concatenating the shorter string, 
the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.
=end

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

p short_long_short('rosa', 'monzon')

#Q2 What century is that?
#write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century
# number, ends with st, nd, rd or th as appropriate for that number.

#New centuries begin in years that end with 01. So, the years
#1901 - 2000 comprise the 20th century.

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end 

def century_suffix(century)
  return 'th' if [11,12,13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

#Q3 In gregorian calendar, leap years occur in every year that is evenly
#divisible by 4, unless the year is also divisible by 100. If it divisible by
#100 it is not a leap year, unless it is evenly divisible by 400.

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2020)

#Q4 update the previous code to find leap years in julian calendar
# where leap years are divisible by 4
def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2020)

#Q5 Write a method thats searches for all multiple of 3 and 5 that lie
#between 1 and some other number, and then computes the sum of those multiples.
#For instance, if the supplied number is 20, the result should be
#98(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20). You can assum numbers are
# greater than 1.

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

#Q6 Write a method that takes an array of numbers, and returns an array with the same number of elements
# and each element has the running total from the original array.

myarr = [2,4,1,7]

def running_total(myarr)
  sum = 0
  myarr.map do |num|
    sum += num
  end
end

p running_total(myarr)

#Q7 The String#to_i method converts a string to numeric chars to an integer. String.to_i and the Integer constructor 
#Integer() behave similarly. In this exercise, you will create a method that does the same thing.
#Write a method that takes a string of digits amd returns the appropriate number as integer. You may not use any of the
#methods mentioned above.
#For now, don't worry about the leading + or - signs, nor shoold y worry about invalid chars, assum all chars will be
#numeric. You may not use any of the standard conversion methods available in Ruby to convert a string to number, such as 
#string.to_i, Integer(), etc. Your method should do this the old fasioned way and calculate the result by analyzing the chars
#in the string.
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}



def string_to_integer(strnum)
  digits = strnum.chars.map {|char| DIGITS[char]}

  value = 0
  digits.each {|digit| value = 10 * value + digit}
  value
end

p string_to_integer('234')


#Q8 In the previous exericise you developed a method that convers simple numeric strings to integers.
# Here you will extend that method to work with signed numbers. The string can have a leading + or -
# if the first char is a + you method should be positive, negative if it a leading -. No sign defaults to
# positive. 

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(strnum)
  digits = strnum.chars.map {|char| DIGITS[char]}

  value = 0
  digits.each {|digit| value = 10 * value + digit}
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer("-3543")