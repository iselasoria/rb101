#### assignment: mortgage calculator #####


def prompt(message)
  puts "=> #{message}"
end

def validamount?(amount)
  amount.to_i.to_s == amount && amount.to_i > 20000
  amount.to_i 
end

def validtimeframe?(timeframe)
  timeframe.to_i.to_s == timeframe &&
  (timeframe.to_i >= 7 && timeframe.to_i <= 30)
end

def validrate?(myrate)
  myrate.to_i.to_s == myrate || myrate.to_f.to_s == myrate
end

def monthly_rate(apruser)
  pct = apruser.to_f / 100.0
  pct.to_f / 12
end

def monthly_payment(amount, monthly_rate, months)
  bill = amount * (monthly_rate / (1 - (1 + monthly_rate)**(-months)))
  bill
end

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

  years = ''
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
    prompt("Enter your APR: ")
    apr_raw = gets().chomp()
    if validrate?(apr_raw)
      break
    else
      prompt("Please enter a valid APR: ")
    end
  end

  months = years.to_i * 12
  borrowed = borrowed.to_i
  apr_raw = apr_raw.to_i 

  puts "Your loan will be for #{months} months. Hang tight, we're calculating your monthly rate."
  sleep(3)

  prompt("Your monthly rate is: #{(monthly_rate(apr_raw)).round(3)}. Calculating your monthly mortgage.")
  sleep(2)

  prompt("You can expect to pay $#{monthly_payment(borrowed, monthly_rate(apr_raw), months).round(2)} per month.")
  
  prompt("Do you wish to run another scenario?")
  another = gets().chomp()
  break unless another.downcase().start_with?('y')
end

prompt("Thanks for using the mortgage calculator, come back again anytime!")
