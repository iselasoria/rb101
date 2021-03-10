### MEDIUM 1 ###

#Q1 ASCII Art. Print the sentence: The Flintstones Rock! output 10 times

10.times {|number| puts (" " * number) + "The Flintstones Rock!"}

#Q2 The result of the following statement will be an error: 
puts "the value of 40 + 2 is " + (40 + 2)
# why is this and what are two possible ways to fix it?
# because the numbers need to be casted to string in order to append them to the string
# the other option is to use string interpolation

#Q3 Alan wrote the following method, which was intended to show all the factos in the input number:
def factors(number)
  divisor = number
  factors = []
rescue #this was added to prevent errors, just don't run the code
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(0)

# Alyssa noticed that this will fail if the input is 0, or a negative, and asked Alan to change the loop. How can you 
# make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers,
# but we just want to handle it gracefuly instead of raising an exception.

#Bonus 1: what's the point of number % divisor == 0 SOLUTION: to find the factor
#Bonus 2: what's the purpose od the second-to-last line in the method, the 
# factors before the method's end? #SOLUTION: to ensure this will be the return value.

#rewriteen as 
def factors(number)
  divisor = number
  factor = []
  while divisor > 0 do
    factor << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factor
end

p factors(0)

#Q4 Alyssa was asked to write an implementation of a rolling buffer.
#Elements are added to the rolling buffer and if the buffer becomes full,
#then new elements that are added will displace the oldest elements in the buffer.
#
#She wrote two implementations saying, "take your pick. Do you like << ir + for
#modifying the buffer?" Is there a difference between the two, other than what operator she cbose to use
# to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

#MUSTREVIEW
##the first one chnages the buffer input argument will be modified,
# the second implementation will not alter it.

#Q5
=begin
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
A user passes in two numbers, and the calculator will keep computing the sequence 
until some limit is reached. Ben coded up this implementation but complained 
that as soon as he ran it, he got an error. Something about the limit variable. 
What's wrong with the code?
=end

limit = 15

def fib(first_num, second_num)
  limit = 15 #this was added here
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#SOLUTION: the limit variable was not recognized because it didnt exist in scope

#Q6 What is the output of the following code?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
##34 because the anwer variable is a number so it's immutable

#Q7 One day Spot was playing with the Munster family's home computer 
#and he wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
p munsters
def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# After writign this method, he typed the following...and before Grandpa
# could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)

p munsters

#Did the family's data get ransacked? Why or why not?

#yeah the hash is messed up because in Ruby, what gets passed to a method
# is not the value but rather the object id. Since Spot didnt re-assign
#demo-hash, but used it as is, the aactual hash object is being used.

#Q8 Method calls can take expressions as arguments. Suppose we define
# a method called rps as follows, which follows the classic rules for 
#rock, paper, scissors but with a twist that it declares whatever hand
#was used in the tie as the result of the tie

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

#what is the result of the following call?
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#SOLUTION paper. First it evaluates rock vs paper, paper wins. Then rock vs scissors
# rock wins. Then, it evaluates those two agains eachother, paper wins. Lastly, 
# Lastly, it evaluates rock vs paper and paper ultimately wins.

#Q9 Consider these two simple methods:
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

#What would be the return value of the following method invocation?
bar(foo)

#SOLUTION: "no" because foo always returns yes, so when the ternary
#operator checks if yes == no, we get false, and therefore it jumps
#to the "else" part of the ternary.

