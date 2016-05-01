def main 
  puts "------------------------------"
  puts "----ELECTRONIC TIC*TAC*TOE----"
  puts "------------------------------"

  puts "Do you want to play tic tac toe?(y/n)"
  play = gets.chomp.to_s
  while play.downcase != 'y' && play.downcase != 'n'
    puts "Please enter either 'y' or 'n'"
    play = gets.chomp.to_s
  end 
  if play == "y"
    start
  else 
    puts "Well, I hope you try me out sometime!"
  end 
end 

#The user will actually not see this method run but it is waht will start the game and get 
#everything moving. 
def start 
  game_board
  #This sets up the array that will be placed into the display_board method
  board = ["* "," * "," * "," * "," * "," * ","* "," * "," * "]
  display_board(board)
  game(board)
end 

def game(board)

  #This boolean flag will start false but when the game is won, it will turn true thus ending the loop.
  game = false 

  while game == false
    puts `clear`
    puts "Game Board"
    print game_board
    puts "------------------"
    puts "player moves:"
    display_board(board)

    #Player One Movements start here
    puts "Player one, based on the board above, where do you want to put an X?"
    choice = gets.chomp.to_i
    
    player_one(board, choice)

    display_board(board)

    player_one_win(board)


    #Player two movements start here
    puts "Player Two, based on the board above, where do you want to put an O?"
    choice = gets.chomp.to_i
    player_two(board, choice)

    # while (board[1] == " * ") || (board[2] == " * ")
    #   puts "Spot taken!"
    #   puts "Player Two, based on the board above, where do you want to put an O?"
    #   choice = gets.chomp.to_i
    #   player_two(board, choice)
    # end 

    display_board(board)

    player_two_win(board)

    #This long conditional statement will check to see if a tie game has develeped.
    if (board[0] == "X " || board[0] == "O " ) && (board[1] == " X " || board[1] == " O ") && 
    (board[2] == " X " || board[2] == " O ") && (board[3] == " X " || board[3] == " O ") &&
    (board[4] == " X " || board[4] == " O ") && (board[5] == " X " || board[5] == " O ") &&
    (board[6] == " X " || board[6] == " O ") && (board[7] == " X " || board[7] == " O ") &&
    (board[8] == " X " || board[8] == " O ")
      puts "Tie Game!!!"
      puts "You should play again to see who the winner is!!"
      game = true 
    end 
  end 
end

#This method will actually be what displays all of the values once a user makes a selection.
def display_board(board)
  puts " #{board[0]}|#{board[1]}|#{board[2]}"
  puts "___________"
  puts "#{board[3]}|#{board[4]}|#{board[5]}"
  puts "___________"
  puts " #{board[6]}|#{board[7]}|#{board[8]}"
end 

#This method is just to show the number layout of the game board. Mainly for players who are not
#familar with tic tac toe. 
def game_board
  puts " 1 | 2 | 3 "
  puts "___________"
  puts " 4 | 5 | 6 "
  puts "___________"
  puts " 7 | 8 | 9 "
end 

#This method is where player one will make their choice. 
def player_one(board, choice)

  if choice == 1 
    board[0] = "X "
  elsif choice == 2
    board[1] = " X "
  elsif choice == 3      
    board[2] = " X " 
  elsif choice == 4 
    board[3] = " X "
  elsif choice == 5
    board[4] = " X "
  elsif choice == 6
    board[5] = " X "
  elsif choice == 7
    board[6] = " X "
  elsif choice == 8 
    board[7] = " X "
  elsif choice == 9
    board[8] = " X " 
  end
end 

#This method will determine if player one won the game. 
def player_one_win(board)

  if board[0] == "X " && board[1] == " X " && board[2] == " X "
    puts "Player One WINS!!!"
    game = true 
  elsif board[3] == " X " && board[4] == " X " && board[5] == " X "
    puts "Player One WINS!!!"
    game = true 
  elsif board[6] == " X " && board[7] == " X " && board[8] == " X "
    puts "Player One WINS!!!"
    game = true
  elsif board[0] == "X " && board[3] == " X " && board[6] == " X "
    puts "Player One WINS!!!"
    game = true
  elsif board[1] == " X " && board[4] == " X " && board[7] == " X "
    puts "Player One WINS!!!"
    game = true 
  elsif board[2] == " X " && board[5] == " X " && board[8] == " X "
    puts "Player One Wins!!!"
    game = true 
  elsif board[0] == "X " && board[4] == " X " && board[8] == " X "
    puts "Player One Wins!!!"
    game = true 
  elsif board[2] == " X " && board[4] == " X " && board[6] == " X "
    puts "Player One wins!!!"
    game = true 
  end 
end 

#This method is where player two will make their choice. 
def player_two(board, choice)

  if choice == 1 
    board[0] = "O "
  elsif choice == 2
    board[1] = " O "
  elsif choice == 3
    board[2] = " O " 
  elsif choice == 4 
    board[3] = " O "
  elsif choice == 5
    board[4] = " O "
  elsif choice == 6
    board[5] = " O "
  elsif choice == 7
    board[6] = " O "
  elsif choice == 8 
    board[7] = " O "
  elsif choice == 9
    board[8] = " O " 
  end
end 

#This method will determine if player two has won the game. 
def player_two_win(board)

  if board[0] == "O " && board[1] == " O " && board[2] == " O "
    puts "Player Two WINS!!!"
    game = true 
  elsif board[3] == " O " && board[4] == " O " && board[5] == " O "
    puts "Player Two WINS!!!"
    game = true 
  elsif board[6] == " O " && board[7] == " O " && board[8] == " O "
    puts "Player Two WINS!!!"
    game = true
  elsif board[0] == "O " && board[3] == " O " && board[6] == " O "
    puts "Player Two WINS!!!"
    game = true
  elsif board[1] == " O " && board[4] == " O " && board[7] == " O "
    puts "Player Two WINS!!!"
    game = true 
  elsif board[2] == " O " && board[5] == " O " && board[8] == " O "
    puts "Player Two Wins!!!"
    game = true 
  elsif board[0] == "O " && board[4] == " O " && board[8] == " O "
    puts "Player Two Wins!!!"
    game = true 
  elsif board[2] == " O " && board[4] == " O " && board[6] == " O "
    puts "Player Two wins!!!"
    game = true 
  end
end

def check(board)
  if (board[1] == " * ") || (board[2] == " * ")
    return true 
  else 
    return false 
  end 
end

main

# ai = rand(1..9)
# board[ai] = " O "


# || (board[1] == " X " || board[1] == " O ") || 
#       (board[2] == " X " || board[2] == " O ") || (board[3] == " X " || board[3] == " O ") ||
#       (board[4] == " X " || board[4] == " O ") || (board[5] == " X " || board[5] == " O ") ||
#       (board[6] == " X " || board[6] == " O ") || (board[7] == " X " || board[7] == " O ") ||
#       (board[8] == " X " || board[8] == " O ")










    


