require ('pry-byebug')
require_relative('game')
require_relative('./exmple')
require_relative('win_checker')

# Create Game
win_checker_1 = WinChecker.new()



our_game = Game1.new(win_checker_1)
# place piece
# our_game.turn
# our_game.place_piece(1, 1)

def menu(game)
  puts "Do you want to play tic-tac-toe? 1 for yes 2 for no"
  option = gets.chomp.to_i
  case option 
    when 1
      gam.turn
    when 2
      exit
  end
end


menu(our_game)
#0, 1)

# display the board

# test displaying row

# puts our_game.display_board

# BE ABLE TO RESET BOARD__________

# our_game.reset_board

# our_game.place_piece(0, 0)

# our_game.place_piece(1, 0)

# our_game.place_piece(1, 1)

# our_game.place_piece(2, 1)

# our_game.place_piece(2, 2)

# our_game.place_piece(0, 0)

# our_game.place_piece(1, 0)

# our_game.place_piece(1, 1)

# our_game.place_piece(2, 1)

# our_game.place_piece(2, 2)


# our_game.place_piece(0, 0)

# our_game.place_piece(1, 0)

# our_game.place_piece(1, 1)

# our_game.place_piece(2, 1)

# our_game.place_piece(2, 2)

# our_game.place_piece(2, 2)
# Don't allow putting pieces out of range

# puts "checking if game is won #{our_game.has_won?(piece)}."

# our_game.place_piece(3, 1)



# Rotate the starting pieces when resetting


# Automatically reset when board is full


binding.pry; ''