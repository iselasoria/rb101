VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def win?(player, comp)
  userwins = 0
  computerwins = 0
  scores = {
          rock: ['scissors', 'lizard'],
          paper: ['rock', 'spock'],
          scissors: ['lizard', 'paper'],
          lizard: ['paper','spock'],
          spock: ['scissors', 'rock']
  }
  if scores[player.to_sym].include? comp.to_sym.to_s
    return "user_won"
  else
    return "computer_won"
  end
end

# not sure how to handle this yet
def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# we need to tally up
def tally(wincheck)
  user = 0
  computer = 0
    if wincheck == "user_won"
      user += 1
    else
      computer += 1
    end
  puts "User: #{user}"
  puts "Computer: #{computer}"
end

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
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing, good bye!")
