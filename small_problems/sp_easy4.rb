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

