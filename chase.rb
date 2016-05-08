#This is what will be what will be described as a cat and mouse game. 

def main
  puts "------------------------"
  puts "      CAT AND MOUSE     "
  puts "      STRATEGY GAME     "
  puts "------------------------"
  puts "Please select an option:"
  puts "1. Start Game"
  puts "2. Directions"
  choice = gets.chomp.to_i
  while !valid(choice)
    puts "Please enter either 1 or 2"
    choice = gets.chomp.to_i
  end 
  if choice == 1 
    game 
  elsif choice == 2
    directions
  end 
end 

def directions
  puts `clear`
  puts "Here you will find the directions to play Cat and Mouse"
  puts "The goal of this game is to catch your opponets 'home'"
end 

################# Validation methods #############

def valid(choice)
  if choice == 1 || choice == 2
    return true
  else 
    return false
  end 
end 

main