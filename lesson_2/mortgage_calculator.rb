#### assignment: mortgage calculator #####



def validamount?(amount)
  amount.to_i.to_s == amount && amount.to_i > 0
end

def validtimeframe?(timeframe)
  timeframe.to_i.to_s == timeframe && (timeframe.to_i >= 7 && timeframe.to_i <= 30)
end

def validrate?(myrate)
  myrate.to_i.to_s == myrate || myrate.to_f.to_s == myrate
end


borrowed = ''
loop do 
  puts "How much money do you need to borrow?"
  borrowed = gets().chomp()


  if validamount?(borrowed)
    break
  else
    puts "Please enter a valid amount: "
  end
end 

years=''
loop do 
  puts "How many years do you want your loan to be?"
  years = gets().chomp()
  if validtimeframe?(years)
    break
  else 
    puts "Your timeframe should be more than 7 years and fewer than 30."
  end 
end 

apr_raw = ''
loop do
  puts puts "Enter your APR in the integer format or decimals in the thenths place"
  apr_raw = gets().chomp()
  if validrate?(apr_raw)
    break
  else
    puts "Please enter a valid APR: "
  end
end 

months = years.to_i * 12
puts months 

apr = (apr_raw.to_i / 100.0) 
puts apr 

monthly_rate = apr.to_f / 12

puts "Your monthly rate is: #{monthly_rate}. Calculating your monthly mortgage."
sleep(10)
# we can round this up to the hundreds place?
monthly_payment = borrowed.to_i * (monthly_rate.to_f / (1 - (1 + monthly_rate).to_f**(-months)))

puts monthly_payment.round(2)


