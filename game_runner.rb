require ('pry-byebug')
require_relative('game')
# Create Game
our_game = Game.new()
# place piece
# our_game.place_piece(0, 0)
# our_game.place_piece(1, 1)
# our_game.place_piece(1, 0)
# our_game.place_piece(0, 1)
# our_game.place_piece(0, 2)
# our_game.place_piece(0, 1)

# display the board

# test displaying row

# puts our_game.display_board

# BE ABLE TO RESET BOARD__________

# our_game.reset_board

our_game.place_piece(0, 0)

our_game.place_piece(1, 0)

our_game.place_piece(1, 1)

our_game.place_piece(2, 1)

our_game.place_piece(2, 2)

# our_game.place_piece(2, 2)
# Don't allow putting pieces out of range

# puts "checking if game is won #{our_game.has_won?(piece)}."

# our_game.place_piece(3, 1)



# Rotate the starting pieces when resetting


# Automatically reset when board is full


binding.pry; ''