#Q1 In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present. Bonus: What are two other hash methhods that would work just as well for this solution?

puts ages.member?('Spot')

ages.key?('Spot')
ages.include?('Spot')

#Q2 Given the string:
munsters_description = "The Munsters are creepy in a good way."

#Conver the string in the following ways(code will be executed on original munsters_description above):
1. "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
2. "The munsters are creepy in a good way."
3. "the munsters are creepy in a good way."
4. "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description = "The Munsters are creepy in a good way."
#1
p munsters_description.swapcase!
#2
p munsters_description.capitalize!
#3
p munsters_description.downcase!
#4
p munsters_description.upcase!

#Q3 We have the most of the munster family in our age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
#add the following to the existing hash
#additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages["Marylin"] = 22
ages["Spot"] = 237

##OR##
ages.merge!(additional_ages)

puts ages

#Q4 See if the name Dino appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
#SOLUTION
p advice.match?("life")

#Q5 Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
#SOLUTION
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Q6 How can we add the family pet Dino the the usual array?
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

p flintstones

#Q7 In the previous practice problem we added Dino to the array. We could have used 
# Array#concat or Array#push to add Dino to the family. How can we add multiple items?
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

flintstones.push("Dino").push("Hoppy")
#OR
flintstones.concat(%w(Dino Hoppy))

#Q8 Shorten this sentence:
advice = "Few things in life are as important as house training your pet dinosaur."
#remove everything starting from "house." The return should be what is left and the
# advice variable should still be "house training your pet dinosaur."
advice.slice!(0, advice.index("house"))

p advice

#using slice should leave the advice string unchanged

#Q9 Write a one-liner to count the number of lower-case 't' characters in the string:
statement = "The Flintstones Rock!"

p statement.count("t")

#Q10 Back in the stone age we used spaces to align things on the screen. If we had 
# 40 characters wide table of the Flintstones family members, how could we easily 
# center that title aboce the table with spaces?

title = "Flintstone Family Members"

title.center(40)