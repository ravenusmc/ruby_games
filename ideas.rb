#This is a file where I will try practicing out some of my ideas for some games. 

board = ["", "   ","   ","   "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} "
  puts "---------"
  puts " #{board[2]} | #{board[3]} "
end 

puts "Please select a position"
choice = gets.chomp.to_i
if choice == 1
  board[0] = "y"
end 

display_board(board)

puts "Please select another position"
choice = gets.chomp.to_i
if choice == 1
  #delete_at method can be used to delete at a specific spot.
  board.delete_at(0)
  board[1] = "n"
end 

display_board(board)

puts "Please select a position"
choice = gets.chomp.to_i
if choice == 1
  board.delete_at(0)
  board[0] = "y"
end 

display_board(board)


#Below is a large game board for my reference.
# puts "   |   |   |   |   |   |   |   |   |   |   "
# puts "-------------------------------------------"
# puts "   |   |   |   |   |   |   |   |   |   |   "
# puts "-------------------------------------------"
# puts "   |   |   |   |   |   |   |   |   |   |   "
# puts "-------------------------------------------"
# puts "   |   |   |   |   |   |   |   |   |   |   "
# puts "-------------------------------------------"
# puts "   |   |   |   |   |   |   |   |   |   |   "
# puts "-------------------------------------------"
# puts "   |   |   |   |   |   |   |   |   |   |   "


