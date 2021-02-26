VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def win?(player, comp)
  #userwins = 0
  #computerwins = 0
  scores = {
          rock: ['scissors', 'lizard'],
          paper: ['rock', 'spock'],
          scissors: ['lizard', 'paper'],
          lizard: ['paper','spock'],
          spock: ['scissors', 'rock']
  }
  if scores[player.to_sym].include? comp.to_sym.to_s
    return true
  else
    false
  end
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
    return "user_won"
  elsif win?(computer, player)
    prompt("Computer won!")
    return "computer_won"
  else
    prompt("It's a tie!")
    return "tie"
  end
end

# we need to tally up
def tally(wincheck)
  if wincheck == "user_won"
    user += 1
  elsif wincheck == "computer_won"
    computer += 1
  else
    tie += 1
  end
  puts "User: #{user}"
  puts "Computer: #{computer}"
end

user = 0
computer = 0
tie = 0
loop do
  choice = ''
  loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}. Computer chose: #{computer_choice}")


  display_result(choice, computer_choice)


  prompt("Do you want to play again?")
  answer = gets.chomp
  tally(display_result(choice, computer_choice))
  break unless answer.downcase.start_with?('y')
  #puts "EMPTY LINE"
  #puts tally(display_result(choice, computer_choice))
end

prompt("Thank you for playing, good bye!")
