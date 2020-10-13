def generate_guess
  rand(6) + 1
end

def prompt_user
  puts "Guess a number 1 to 6!"
end

def capture_input
  input = gets.chomp
end

def check_input(input, guess)
  if (input.to_i) == guess
    puts "You guessed the correct number!"
  elsif input == "exit"
    end_game
  else 
  puts "Sorry! The computer guessed #{guess}."
  end
end

def end_game
  puts "Goodbye!"
end

def run_guessing_game
  guess = generate_guess
  prompt_user
  input = capture_input
  check_input(input, guess)
end