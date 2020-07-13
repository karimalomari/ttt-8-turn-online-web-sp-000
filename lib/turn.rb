def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end


def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
      taken = true
  end
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