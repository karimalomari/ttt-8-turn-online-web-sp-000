def turn(board)
  puts "Please enter 1-9:"
  userInput = gets.strip
  index = input_to_index(userInput)
  if !valid_move? (board, index)
    turn (board)
  else
    move(board, index, )
end