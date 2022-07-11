@board = []
@computer_combo = ["1", "2", "3", "4"]
@i = 0

#methods

def half_match_checker
  if @computer_combo.include?(@user_guess[0])
    @board << "*"
  end
  if @computer_combo.include?(@user_guess[1])
    @board << "*"
  end
  if @computer_combo.include?(@user_guess[2])
    @board << "*"
  end
  if @computer_combo.include?(@user_guess[3])
    @board << "*"
  end
  p @board
end

def full_match_checker
  if @computer_combo[0].eql?(@user_guess[0])
    @board[0] = "!"
  end
  if @computer_combo[1].eql?(@user_guess[1])
    @board[1] = "!"
  end
  if @computer_combo[2].eql?(@user_guess[2])
    @board[2] = "!"
  end
  if @computer_combo[3].eql?(@user_guess[3])
    @board[3] = "!"
  end
  p @board
end


=begin
def computer_code
  r = Random.new
  @computer_combo[0] = (r.rand(1...6))
  @computer_combo[1] = (r.rand(1...6))
  @computer_combo[2] = (r.rand(1...6))
  @computer_combo[3] = (r.rand(1...6))
end
=end

# computer_code  

puts "Game started."

while @i < 12
  puts "Please guess a 4 digit combination. Digits must be between 1 & 6."

  @board = []

  @user_guess = gets.split(%r{\s*})

  puts "Your guess is:"
  p @user_guess

  half_match_checker
  full_match_checker
  break if @board == ["!", "!", "!", "!"]
  puts "Here is your score. A * indicates a number that is in the code but not in the correct place, and a ! indicates a correct number in the correct place. This code has been shuffled, so appears in a random order."
  p @board.shuffle  
  @i += 1
end

if @board == ["!", "!", "!", "!"] 
  puts "You win!"
end

if @i == 12
  puts "Sorry, you've run out of guesses. You lose. The computer code was #{@computer_combo}."
end

