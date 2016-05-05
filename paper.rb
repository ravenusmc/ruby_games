#This will be a paper rock sciccors game. 

#This is the main method that starts the game. 
def main
  puts "-----------------------------------------"
  puts "Welcome to Electronic Paper Rock Scissors"
  puts "-----------------------------------------" 
  puts "Do you want to play?(y/n)"
  choice = gets.chomp.to_s
  while !valid(choice)
    puts "Please enter either y or n"
    choice = gets.chomp.to_s
  end 
  if choice == "y"
    human
  elsif choice == "n"
    puts "Thank you for coming here!"
    puts "I hope to see you soon!!!"
  end 
end 

#This method is where the human player will select their choice of 'weapon'
def human 
  puts `clear`
  puts "-----------------------------------------"
  puts "Here is where you will select your weapon!"
  puts "Based on the following choices below,"
  puts "Please select your weapon: (1,2,3)"
  puts "1. rock"
  puts "2. paper"
  puts "3. scissors"
  weapon = gets.chomp.to_i
  while !valid2(weapon)
    puts "Please make a valid choice with either 1,2 or 3"
    weapon = gets.chomp.to_i
  end 
  if weapon == 1 
    puts "You selected 'ROCK' as your weapon."
    weaponSHow = "ROCK"
    game(weapon, weaponSHow)
  elsif weapon == 2
    puts "You selected 'PAPER' as your weapon."
    weaponSHow = "PAPER"
    game(weapon, weaponSHow)
  elsif weapon == 3
    puts "You selected 'SCISSORS' as your weapon."
    weaponSHow = "SCISSORS"
    game(weapon, weaponSHow)
  end 
end 

#This method is where the robot will select its weapon. It will not actually be called until the 
#game method. 
def robot()
  number = rand(1..3)
  return number
end

#This method is where the actual game will be played. 
def game(weapon, weaponSHow)
  puts `clear`
  puts "The human selected #{weaponSHow}"
  robChoice = robot
  show(robChoice)
  if weapon == 1 && robChoice == 1
    puts "Tie Game! Play again!"
  elsif weapon == 1 && robChoice == 2
    puts "The Robot wins!"
  elsif weapon == 1 && robChoice == 3
    puts "The Human wins!"
  elsif weapon == 2 && robChoice == 1 
    puts "The Human wins"
  elsif weapon == 2 && robChoice == 2
    puts "Tie game! Play again!"
  elsif weapon == 2 && robChoice == 3
    puts "The robot wins"
  elsif weapon == 3 && robChoice == 1
    puts "The Robot wins"
  elsif weapon == 3 && robChoice == 2
    puts "The Human wins"
  elsif weapon == 3 && robChoice == 3 
    puts "Tie game! Play Again"  
  end   
end 

########### All of the validation or 'extra' methods, if I need them will be here. #######

#The below two methods validate to ensure that the user inputs the correct choice. 
def valid(choice)
  if choice == "y" || choice == "n"
    return true
  else 
    return false
  end 
end 

def valid2(weapon)
  if weapon == 1 || weapon == 2 || weapon == 3
    return true
  else 
    return false
  end 
end 

#The below method shows what the robot selected. 
def show(robChoice)
    if robChoice == 1
    puts "-----------------------"
    puts "The robot selected ROCK"
    puts "-----------------------"
  elsif robChoice == 2
    puts "-----------------------"
    puts "The robot selected PAPER"
    puts "-----------------------"
  elsif robChoice == 3
    puts "-----------------------"
    puts "The robot selected SCISSORS"
    puts "-----------------------"
  end 
end 

main