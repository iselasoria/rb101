VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def win?(player, comp)
  scores = {
    rock: ['scissors', 'lizard'],
    paper: ['rock', 'spock'],
    scissors: ['lizard', 'paper'],
    lizard: ['paper', 'spock'],
    spock: ['scissors', 'rock']
  }
  if scores[player.to_sym].include? comp.to_sym.to_s
    true
  else
    false
  end
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
    "user_won"
  elsif win?(computer, player)
    prompt("Computer won!")
    "computer_won"
  else
    prompt("It's a tie!")
    "tie"
  end
end

# present the winner of the match
def ultimate_winner(user, comp)
  if user > comp
    "user"
  else
    "computer"
  end
end

user = 0
computer = 0
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

  if display_result(choice, computer_choice) == "user_won"
    user += 1
  elsif display_result(choice, computer_choice) == "computer_won"
    computer += 1
  end

  puts "User: #{user}"
  puts "Computer: #{computer}"

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  break if user == 5 || computer == 5
end

ultimate_winner(user, computer)

prompt("Thank you for playing, the winner of this game is \
the #{ultimate_winner(user, computer)}!")
