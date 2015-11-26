class RubbishWinChecker
 

   WINS = [
     [0, 1, 2], [3, 4, 5], [6, 7, 8],  # <-- Horizontal wins
     [0, 3, 6], [1, 4, 7], [2, 5, 8],  # <-- Vertical wins
     [0, 4, 8], [2, 4, 6]           # <-- Diagonal wins
   ]

   def has_won?(symbol, board)
      board_array = board.flatten
       if WINS.any? { |line| line.all? { |square| board_array[square] == symbol } }
       puts "#{symbol} is the winner"
       return true
       else return false
      end  
    end  







end  