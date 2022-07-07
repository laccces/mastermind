@board = []
@computer_combo = [1, 2, 3, 4]
@i = 0

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

p @computer_combo

puts "Please guess a 4 digit combination. Digits are between 1 & 6."

# @user_guess = gets.split(%r{\s*})

@user_guess = [2, 5, 6, 4]

p @user_guess

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
end

half_match_checker
full_match_checker
p @board.shuffle

# Up to 12 turns
