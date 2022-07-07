empty_board = ["?", "?", "?", "?"]
@computer_combo = [0, 0, 0, 0]

=begin
def computer_code
  r = Random.new
  @computer_combo[0] = (r.rand(1...6))
  @computer_combo[1] = (r.rand(1...6))
  @computer_combo[2] = (r.rand(1...6))
  @computer_combo[3] = (r.rand(1...6))
end
=end

computer_code  
p @computer_combo

puts "Please guess a 4 digit combination. Digits are between 1 & 6."

user_guess = gets.split(%r{\s*})

p user_guess


# Up to 12 turns
