require_relative('win_checker')
require_relative('rubbish_win_checker')

win_checker = RubbishWinChecker.new



empty_board = [ [nil,nil,nil],[nil,nil,nil],[nil,nil,nil] ]

symbol = :x

puts "check that empty board doesn't win: expect that: #{win_checker.has_won?(symbol, empty_board)} is false."

board_with_horizontal = [ [:x,:x,:x],[nil,nil,nil],[nil,nil,nil] ]

puts "check that horizontal line wins expect that: #{win_checker.has_won?(symbol, board_with_horizontal)} is true."



win_checker.has_won?(symbol, board_with_horizontal)