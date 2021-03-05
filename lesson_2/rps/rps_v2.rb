VALID_CHOICES = %w(rock paper scissors lizard spock)
WINNING_SCORE = 5
WINNING_MOVES = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['lizard', 'paper'],
  lizard: ['paper', 'spock'],
  spock: ['scissors', 'rock']
}

def prompt(message)
  puts("=> #{message}")
end

def win?(player, comp)
  if WINNING_MOVES[player.to_sym].include? comp.to_sym.to_s
    true
  else
    false
  end
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def results_counter(player, computer)
  if win?(player, computer)
    "user_won"
  elsif win?(computer, player)
    "computer_won"
  else
    "tie"
  end
end

def play_again?(answer)
  if answer.downcase.start_with?('y')
    true
  else
    false
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

prompt("Welcome to the rock, paper, lizard, spock game. \
You'll play against the computer and whoever reaches a score  \
of five first will have won the match. Good luck!")
puts
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
  display_result(choice, computer_choice)

  if results_counter(choice, computer_choice) == "user_won"
    user += 1
  elsif results_counter(choice, computer_choice) == "computer_won"
    computer += 1
  end

  puts "User: #{user}"
  puts "Computer: #{computer}"
  break if user == WINNING_SCORE || computer == WINNING_SCORE

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless play_again?(answer)
  system("clear")
end

ultimate_winner(user, computer)

prompt("Thank you for playing, the winner of this game is \
the #{ultimate_winner(user, computer)}!")
