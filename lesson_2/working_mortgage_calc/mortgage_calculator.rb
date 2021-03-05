#### assignment: mortgage calculator #####
require "yaml"
MESSAGES = YAML.load_file('/Users/rosasoria/Documents/LS/rb101/lesson_2/working_mortgage_calc/mortgage_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_amount?(amount)
  amount.to_i.to_s == amount && amount.to_i > 0
end

def validtimeframe?(timeframe)
  timeframe.to_i.to_s == timeframe && (timeframe.to_i > 0)
end

def valid_rate?(myrate)
  (myrate.to_i.to_s == myrate && myrate.to_i > 0) ||
    (myrate.to_f.to_s == myrate && myrate.to_f > 0)
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
    prompt(MESSAGES['money_needed'])
    borrowed = gets().chomp()

    if valid_amount?(borrowed)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  years = ''
  loop do
    prompt(MESSAGES['time'])
    years = gets().chomp()
    if validtimeframe?(years)
      break
    else
      prompt(MESSAGES['invalid_time'])
    end
  end

  apr_raw = ''
  loop do
    prompt(MESSAGES['apr'])
    apr_raw = gets().chomp()
    if valid_rate?(apr_raw)
      break
    else
      prompt(MESSAGES['invalid_apr'])
    end
  end

  months = years.to_i * 12
  borrowed = borrowed.to_i
  apr_raw = apr_raw.to_f

  puts "Your loan will be for #{months} months. \
  Hang tight, we're calculating your monthly rate."
  sleep(3)

  prompt("Your monthly rate is: #{(monthly_rate(apr_raw)).round(3)}. \
  Calculating your monthly mortgage.")
  sleep(2)

  month_cost = monthly_payment(
    borrowed,
    monthly_rate(apr_raw),
    months
  ).round(2)

  prompt("You can expect to pay: #{month_cost} per month.")

  prompt(MESSAGES['again'])
  another = gets().chomp()
  break unless another.downcase().start_with?('y')
  system('clear')
end

prompt(MESSAGES['thanks_comeagain'])
