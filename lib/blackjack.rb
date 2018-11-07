
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(total_num)
  puts "Your cards add up to #{total_num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total_num)
  puts "Sorry, you hit #{total_num}. Thanks for playing!"
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2 
  display_card_total(sum)
  sum
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  
  if(input == "s")
    total
  elsif (input == "h")
    total += deal_card
    total
  else
    invalid_command
    prompt_user
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
  total = initial_round
  
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  
  end_game
end
    
