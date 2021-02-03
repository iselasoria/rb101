# now we will refactor

def prompt(message)
  Kernel.puts("=> #{message}")
end 

def valid_number?(num)
  num.to_i != 0
end 

prompt("Welcome to calculator!")

number1 = ''
loop do 
  prompt("What is the first number?")
  number1 = Kernel.gets().chomp()

  if valid_number?(number1)
    break
  else
    prompt("Hmm.. that doesn't look like a valid number.")
  end 
end 


number2 = ''
loop do 
  prompt("What is the second number?")
  number2 = Kernel.gets().chomp()

  if valid_number?(number2)
    break
  else
    promt("Hmm.. that doesn't look like a valid numbers.")
  end 
end

prompt("What operation would you like to perform? 1)add 2)subtracrt 3)multiply 4)divide")

operator = Kernel.gets().chomp()

result = case operator 
         when '1'
          number1.to_i + number2.to_i
         when '2'
          result = number1.to_i - number2.to_i
         when '3'
          result = number1.to_i * number2.to_i
         when '4'
          result = number1.to_f / number2.to_f
end 


prompt("The result is: #{result}")