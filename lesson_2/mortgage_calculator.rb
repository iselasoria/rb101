#### assignment: mortgage calculator #####

def prompt(message)
  puts "=> #{message}"
end 

def validamount?(amount)
  amount.to_i.to_s == amount && amount.to_i > 20000
end

def validtimeframe?(timeframe)
  timeframe.to_i.to_s == timeframe && (timeframe.to_i >= 7 && timeframe.to_i <= 30)
end

def validrate?(myrate)
  myrate.to_i.to_s == myrate || myrate.to_f.to_s == myrate
end

def apr_to_pct(apruser)
  apruser.to_f / 100.0
end

#apr_aspct(6.6)

#apr = (apr_raw.to_i / 100.0) 

 # monthly_rate = apr.to_f / 12



loop do 
  borrowed = ''
  loop do 
    prompt("How much money do you need to borrow?")
    borrowed = gets().chomp()


    if validamount?(borrowed)
      break
    else
      prompt("Please enter a valid amount: ")
    end
  end 

  years=''
  loop do 
    prompt("How many years do you want your loan to be?")
    years = gets().chomp()
    if validtimeframe?(years)
      break
    else 
      prompt("Your timeframe should be more than 7 years and fewer than 30.")
    end 
  end 

  apr_raw = ''
  loop do
    prompt("Enter your APR in the integer format or decimals in the thenths place")
    apr_raw = gets().chomp()
    if validrate?(apr_raw)
      break
    else
      prompt("Please enter a valid APR: ")
    end
  end 

  prompt("The percentage you set is #{(apr_to_pct(apr_raw) * 100).round(2)}%")
  months = years.to_i * 12
  puts "Your loan will be for #{months} months. Hang tight, we're calculating your monthly rate."
  sleep(7)

  # take user apr and make it a percentage
  apr = (apr_raw.to_f / 100.0) 

  monthly_rate = apr.to_f / 12

  prompt("Your monthly rate is: #{(monthly_rate).round(3)}. Calculating your monthly mortgage.")
  sleep(7)
  # we can round this up to the hundreds place?
  monthly_payment = borrowed.to_i * (monthly_rate.to_f / (1 - (1 + monthly_rate).to_f**(-months)))

  prompt("You can expect to pay $#{monthly_payment.round(2)} per month.")
  sleep(5)

  prompt("Do you wish to run another scenario?")
  another = gets().chomp()
  break unless another.downcase().start_with?('y')
end 

prompt("Thanks for using the mortgage calculator, come back again anytime!")


