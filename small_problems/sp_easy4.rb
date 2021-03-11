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

#Q4