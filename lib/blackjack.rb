def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1..11)
end

def display_card_total(card_total)
  puts  "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay".chomp
 end 

def get_user_input
 letter = gets.chomp
 end


def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  ini1 = deal_card
  ini2 = deal_card
 sum = (ini1+ini2)
display_card_total(sum)
 sum
 end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_total += deal_card
  elsif  user_input == "s"
    card_total
  else
  invalid_command
  hit?(card_total)
 end
 end
 def invalid_command
    puts "Please enter a valid command"
end 




#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  deal_card
  dispy_card_total(card_total)
  prompt_user
  hit?(card_total)
  invalid_command
end
    
