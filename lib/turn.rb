def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"&& index.between?(0, 8)
    return false 

  elsif 
    board[index] == " "||board[index] == ""|| board[index] == nil && index.between?(0, 8)
    return true 

  else 
    return false

 end
end


def move (board, position, char="X")
  board[position] = char
end


def turn(board)
  puts "Please enter 1-9:"
  userInput = gets.strip
  index = input_to_index(userInput)
  if !valid_move? (board, index)
    turn (board)
  else
    move(board, index, current_player(board))
  end
  display_board(board)
end