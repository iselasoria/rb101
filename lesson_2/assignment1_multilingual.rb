################# assignment 1 ############# Q4
LANGUAGE='es'
require 'yaml'
MESSAGES = YAML.load_file('/Users/rosasoria/Documents/LS/rb101/lesson_2/assignment1_calculator_messages_es.yml')
# puts MESSAGES.inspect
# now we will refactor
def messages(message, lang='es')
  MESSAGES[lang][message]
end


def prompt(key)
  message = messages(key, LANGUAGE)
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

#prompt(MESSAGES['welcome'])
prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    promtp('valid_name')
  else
    break
  end
end

prompt("Hi #{name}")

loop do 

  number1 = ''
  loop do 
    prompt('firstnum')
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt('invalid_num')
    end
  end

  number2 = ''
  loop do
    prompt('secondnum')
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      promt('invalid_num')
    end
  end

  #operator_prompt = 'opperation'
  
  prompt('opperation')

operator = ''
loop do
  operator = Kernel.gets().chomp()
  if %w(1 2 3 4).include?(operator)
    break
  else
    prompt('checkop')
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

prompt('anotherone')
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end

prompt('thanks')


##the last issue remaining is the case statement in the opperation and then result