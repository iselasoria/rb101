################# assignment 1 ############# Q4
require 'yaml'
MESSAGES = YAML.load_file('/Users/rosasoria/Documents/LS/rb101/lesson_2/calculator_messages.yml')
puts MESSAGES.inspect
# now we will refactor

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_int?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end 

def valid_number?(num)
  valid_int?(num) || valid_float?(num)
end 

def operation_to_message(op)
operation_completed =   case op
                        when '1'
                          "Adding"
                        when '2'
                          "Subtracting"
                        when '3'
                          "Multiplying"
                        when '4'
                          "Dividing"
                        end
                        x = "Adding random line for testing"

                        operation_completed
end

prompt("Welcome to calculatorEnter your name: ")

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    promtp("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do 

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
      promt("Hmm.. that doesn't look like a valid number.")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide

  MSG
  
  prompt(operator_prompt)

operator = ''
loop do
  operator = Kernel.gets().chomp()
  if %w(1 2 3 4).include?(operator)
    break
  else
    prompt("must include 1 2 3 or 4")
  end
end

prompt("#{operation_to_message(operator)} the two numbers...")

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

prompt("Do you want to perform another calculation?")
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator!")
