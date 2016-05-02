#This is a number guessing game. The user will select the game difficuly of easy, medium or hard 
#and then the game will start. The user's goal is to guess the correct number in the fewest number
#of attempts. It does work and plays fine. I may add other features to it as time goes on but 
#right now I ma fairly happy with it! 

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
  puts `clear`
  puts "Before you play, you need to select your game difficulty!"
  puts "What game difficulty do you want?"
  puts "Please select the following:"
  puts "1. Easy"
  puts "2. Medium"
  puts "3. Hard"
  puts "4. Your choice"
  num =  gets.chomp.to_i 
  while !modeValid(num)
    puts "Please enter either 1, 2, 3 or 4"
    num = gets.chomp.to_i
  end 
  if num == 1
    mode = "Easy"
    count = 0
    rangeL = 1
    rangeH = 10
    number = rand(1..10)
    game(mode, count, rangeL, rangeH, number)
  elsif num == 2
    mode = "Medium"
    count = 0
    rangeL = 1
    rangeH = 100
    number = rand(1..100)
    game(mode, count, rangeL, rangeH, number)
  elsif num == 3 
    mode = "Hard"
    count = 0 
    rangeL = 1
    rangeH = 1000
    number = rand(1..1000)
    game(mode, count, rangeL, rangeH, number)
  elsif num == 4 
    mode = "N/A"
    count = 0
    rangeL = 1
    puts "Please enter an upper value."
    upper = gets.chomp.to_i
    rangeH = upper
    number = rand(1..rangeH)
    game(mode, count, rangeL, rangeH, number)
  end 
end 

#This method is where the actual game play takes place. Based on variables that are passed in the 
#game difficulty will change. 
def game(mode, count, rangeL, rangeH, number)
  puts `clear`
  puts "---------------------"
  puts "Welcome to #{mode} mode!"
  puts "---------------------"
  puts "Please enter a number to guess between #{rangeL} and #{rangeH}."
  guess = gets.chomp.to_i
  count += 1 
  while guess != number 
    if guess > number 
      puts "You guessed to high"
      count += 1
      puts "Please enter a number to guess between #{rangeL} and #{rangeH}."
      guess = gets.chomp.to_i
    elsif guess < number 
      puts "You guessed to low"
      count += 1 
      puts "Please enter a number to guess between #{rangeL} and #{rangeH}."
      guess = gets.chomp.to_i
    end
  end 
  puts "You guessed the number in #{count} attempts!"
end 


##########All the methods below this point are "helper" methods like validation. ############

#This is a validation method to ensure that the player selects either yes or no. 
def valid(choice)
  if choice == "y" || choice == "n"
    return true 
  else 
    return false
  end 
end 

#Another user validation model to ensure that the user selects either 1, 2 or 3. 
def modeValid(num)
  if num == 1 || num == 2 || num == 3 || num == 4
    return true 
  else 
    return false 
  end 
end 

main 