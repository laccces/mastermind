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

puts "Who is guessing? Put 1 for computer to guess and 2 for you to guess."

p guess_choice = gets.chomp


if guess_choice == "1"
  puts "Enter a 4 digit code (numbers must be between 1 and 6), and the computer will try to guess it."

  @player_code = gets.split(%r{\s*})
  
  while @i < 12
    def computer_guess
    r = Random.new
    if @computer_combo[0] != "!"
      @computer_combo[0] = (r.rand(1...6)).to_s
    end

    if @computer_combo[1] != "!"
      @computer_combo[1] = (r.rand(1...6)).to_s
    end
    
    if @computer_combo[2] != "!"
      @computer_combo[2] = (r.rand(1...6)).to_s
    end
    
    if @computer_combo[3] != "!"
      @computer_combo[3] = (r.rand(1...6)).to_s
    end
  end
    
  computer_guess 

    puts "The computer guessed: #{@computer_combo}"

    def comp_match_checker
      if @player_code[0].eql?(@computer_combo[0])
        @computer_combo[0] = "!"
      end
      if @player_code[1].eql?(@computer_combo[1])
        @computer_combo[1] = "!"
      end
      if @player_code[2].eql?(@computer_combo[2])
        @computer_combo[2] = "!"
      end
      if @player_code[3].eql?(@computer_combo[3])
        @computer_combo[3] = "!"
      end
    end
    
    comp_match_checker
    
    break if @computer_combo == ["!", "!", "!", "!"]
    @i += 1
  end

  if @computer_combo == ["!", "!", "!", "!"] 
    puts "Computer wins!"
  end
  
  if @i == 12
    puts "Computer loses. You win!"
  end

  
elsif guess_choice == "2"
  def computer_code
    r = Random.new
    @computer_combo[0] = (r.rand(1...6)).to_s
    @computer_combo[1] = (r.rand(1...6)).to_s
    @computer_combo[2] = (r.rand(1...6)).to_s
    @computer_combo[3] = (r.rand(1...6)).to_s
  end

  computer_code
  
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
else
  puts "Error. Please enter 1 or 2."
end



