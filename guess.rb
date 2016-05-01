#This is a number guessing game. 

#This method will be the starting screen of the game. It is from here that the user will decide 
#whether or not they want to play the game. 
def main 
  puts "---------------------"
  puts "Welcome to Mike's Number guessing game"
  puts "----------------------"
  puts "Do you want to play?"
  choice = gets.chomp.to_s
  while !valid(choice)
    puts "please enter either y or n"
    choice = gets.chomp.to_s
  end 
  if choice == 'y'
    mode 
  else 
    puts "Well, I hope you come back soon to play!"
  end 
end 

#This method will allow the user to select what game difficulty they want to play on.
def mode 
  puts "Before you play, you need to select your game difficulty!"
end 

#All the methods below this point are "helper" methods like validation.

#This is a validation method to ensure that the player selects either yes or no. 
def valid(choice)
  if choice == "y" || choice == "n"
    return true 
  else 
    return false
  end 
end 

main 