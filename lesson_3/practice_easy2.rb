#Q1 In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present. Bonus: What are two other hash methhods that would work just as well for this solution?

puts ages.member?('Spot')

ages.key?('Spot')
ages.include?('Spot')


