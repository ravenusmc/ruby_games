#This is a file where I will try practicing out some of my ideas for some games. 

board = ["   ", "   ","   ","   "]

def display_board(board)
  puts "#{board[0]}|#{board[1]}"
  puts "---------"
  puts "#{board[2]}|#{board[3]}  "
end 

puts "Please select a position"
choice = gets.chomp.to_i
if choice == 1
  board[0] = "y"
end 

display_board(board)
