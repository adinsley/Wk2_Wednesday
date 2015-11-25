class RubbishWinChecker
  [1,2,3]
  [4,5,6]
  [7,8,9]
  [1,4,7]

  Winning_boards[[symbol, symbol, symbol, nil, nil, nil, nil, nil, nil]
                  [nil, nil, nil, symbol, symbol, symbol, nil, nil, nil]
                  [nil, nil, nil, nil, nil, nil, symbol, symbol, symbol]
                  [symbol, nil, nil, symbol, nil, nil, symbol, nil, nil]
                  [nil, symbol, nil, nil, , nil, symbol, symbol, symbol]
                  [nil, symbol, nil, nil, symbol, nil, nil, symbol, nil]
                  [nil, nil, symbol, nil, nil, symbol, nil, nil, symbol]

                  


  def board_to_indexes(board,symbol)
    #[:x,:o,nil,:o,:x,:x,nil,nil:o]
    flattened_board = board.flatten
    indexes = []
    flattened_board.each_with_index do |square, index|
      indexes.push(index) if square == symbol 
    end
    #[0,1,3,8]
    indexes
  end
                  








                ]

  
end  