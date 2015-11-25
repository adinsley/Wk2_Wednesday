class Game
  def initialize(win_checker)
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    @pieces = [:o, :x]
    @turn = 0
    @win_checker = win_checker
    @noughts = 0
    @crosses = 0

  end 

  def display_board
    row_strings = @board.map do |row| row_to_string(row)
    end
    row_strings.join("\n _ _ _ _ \n")
  end  
 
  def reset_board
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    @turn = 0
    @pieces = @pieces.reverse
  end    


  def place_piece(row, column)
      if column > 2 || row > 2
        puts "This square does not exist, please select a row,column number 0-2"
      return false
      end  

      if @board[row][column]
      puts "Already a piece there, please try again" 
      return false
      end
      
      @board[row][column] = @pieces[@turn % 2]
      puts display_board

      
      check_win = @turn
      @turn += 1
      puts "Turn Count #{@turn}"

      if @win_checker.has_won?(@pieces[check_win % 2], @board) != false
        add_to_score(@pieces[check_win % 2])
        reset_board

      end
    
      if @turn == 9
        puts "Full Board, play again"
        reset_board
      end

      def add_to_score(symbol)
        if symbol == :o
          @noughts += 1
        elsif symbol == :x
          @crosses += 1
        end
          puts "Score Noughts: #{@noughts} -- Crosses: #{@crosses}"
      end

  end

  # def has_won?(symbol)
  #   if horizontal_line?(symbol) ||  vertical_line?(symbol) || diaganol_line(symbol)
  #     puts "#{symbol} is the winner"
  #     reset_board
  #     display_board
  #   else return false
  #   end  
  # end  



  # def horizontal_line?(symbol)
  #   @board.any? do |row| row_has_winning_line(row, symbol)
  #   end
  # end  

  # def vertical_line?(symbol)
  #   trans_board = @board.transpose
  #   trans_board.any? do |row| row_has_winning_line(row, symbol)
  #   end
  # end  

  # def diaganol_line(symbol)
  #   middle_piece = @board[1][1]
  #   return false if middle_piece != symbol
  #   top_left_and_bottom_right = @board[0][0] == symbol && @board[2][2] == symbol
  #   top_right_and_bottom_right = @board[0][2] == symbol && @board[2][0] == symbol
  #   top_right_and_bottom_right || top_left_and_bottom_right
  # end

  # def row_has_winning_line(row, symbol)
  #   row.all? do |square|
  #     square == symbol
  #   end
  # end  



  private  #Private method meand that the menthod cannot be called from outside the class.

      def row_to_string(row)
       row_symbols = row.map do |piece|
        piece || " " end
        row_symbols.join(" | ")
      end

end