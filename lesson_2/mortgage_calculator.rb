#### assignment: mortgage calculator #####



def validamount?(amount)
  amount.to_i.to_s == amount && amount.to_i > 0
end
#puts validamount?(400)

loop do 
  puts "How much money do you need to borrow?"
  borrowed = gets().chomp()


  if validamount?(borrowed)
    break
  else
    puts "Please enter a valid amount: "
  end
end 

prompt("How many years do you want your loan to be?")

years = gets().chomp().to_i()


months = years * 12


prompt("Enter your APR in the integer format or decimals in the thenths place")

apr_raw = gets().chomp().to_f()

apr = apr_raw / 100 

monthly_rate = apr / 12

puts monthly_rate
# we can round this up to the hundreds place?
monthly_payment = borrowed * (monthly_rate / (1 - (1 + monthly_rate)**(-months)))

puts monthly_payment


