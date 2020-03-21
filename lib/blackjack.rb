require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(n)
  if n > 21 
    puts "Sorry, you hit #{n}. Thanks for playing!"
  end
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(current_total)
  puts "Type 'h' to hit or 's' to stay"
  input = get_user_input
  if input == 'h'
       current_total += deal_card
  elsif input == 's'
   current_total
 else
   prompt_user
  end
  binding.pry
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
