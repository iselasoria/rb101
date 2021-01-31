#SEUDO CODE
#ask user to two numbners
#ask user for operation to perform
#perform the operation on the two numbers
#output the result

#answer = gets
#puts answer

Kernel.puts("Welcome to calculator!")

Kernel.puts("What is the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What is the first number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation would you like to perform? 1)add 2)subtracrt 3)multiply 4)divide")

operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
elsif operator == '4'
  result = number1.to_f / number2.to_f
end 

Kernel.puts("The result is: #{result}")