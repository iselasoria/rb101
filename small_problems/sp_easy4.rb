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
  if year / 100 == 0 || year % 10 == 0
    puts "#{year % 100} + th" 
  else
    puts "we'll figure this out later"
  end 
end 

century(1990)