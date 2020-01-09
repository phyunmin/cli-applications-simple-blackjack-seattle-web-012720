def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1..11)
  num
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.strip
  input
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  sum = first_card+second_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input=='s'
    card_total = current_card_total
  elsif input == 'h'
    another_card = deal_card
    card_total = current_card_total+another_card
  else
    invalid_command
    prompt_user
    input = get_user_input
  end
  return card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  
  until card_total>21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
    end_game(card_total)
  end
  
end
    
