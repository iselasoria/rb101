#Q1 Note the code below. What does it print?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
p numbers.inspect

#SOLUTION 
1
2
2
3
# using the p instead of the puts would have yielded [1,2,2,3] because p calls inspect.
# using puts numbers.inspect would have done the same.

#Q2
# Describe the difference between ! and ? in Ruby. Explain what would happen in the 
# following scenarios
#SOLUTION:
# the ! mutates the object it is called on, the ? returns a boolean, typically it is the ending
# of a method that checks for a condition with. If you use them at the end of the method they are part
# of the method name and NOT Ruby syntax.

=begin
what is != and where should you use it? -> this is the same as saying "not equal to". Used in logic to compare.
put ! before something, like !user_name -> used to turn something into THE OPPOSITE of its boolean equivalent.
put ! after something, like words.uniq! -> this mutates the caller
put ? before something ->
put ? after something -> checks if something returns true
put !! before something, like !!user_name -. used to turn any object into its boolean equivalent.
=end

#Q3 Repplace the word "important" with "urgent" in this string

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub('important','urgent')

#Q4 The Ruby Array class has several methods for rempving items from the array. Two of them have very similar names.
# Let's see how they differ:

numbers = [1,2,3,4,5]

# what do the following do?
numbers.delete_at(1) # this removes item at position 1, so number 2.
numbers.delete(1) # this removes the actual number 2

#Q5 Programmatically determine if 42 lies between 10 and 100.
(10..100).cover?(42)

#Q6 Starting with the string
famous_words = "seven years ago..."
# show two ways pf putting "Four score and" in front of it

intro = "Four score and "

puts "#{intro}#{famous_words}"

puts intro.concat(famous_words)

famous_words.prepend("Four score and ")
"Four score and " + famous_words
"Four score and " << famous_words

#Q7 If we build an array like this:
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

#We will end up with this "nested" array:
#["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

#make this into an un-nested array.
p flintstones.flatten!

#Q8 Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

puts flintstones.assoc('Barney')