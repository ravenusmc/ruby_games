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
  puts `clear`
  puts "Before you play, you need to select your game difficulty!"
  puts "What game difficulty do you want?"
  puts "Please select the following:"
  puts "1. Easy"
  puts "2. Medium"
  puts "3. Hard"
  num =  gets.chomp.to_i 
  while !modeValid(num)
    puts "Please enter either 1, 2 or 3"
    num = gets.chomp.to_i
  end 
  if num == 1 
    number = rand(1..10)
    game(number)
  end 
end 

def game(number)
  puts `clear`
  puts "---------------------"
  puts "Welcome to Easy mode!"
  puts "---------------------"
  puts "Please enter a number to guess between 1 and 10"
  guess = gets.chomp.to_i
  count = 0
  while guess != number 
    if guess > number 
      puts "You guessed to high"
      count += 1
      puts "Please enter a number to guess between 1 and 10"
      guess = gets.chomp.to_i
    elsif guess < number 
      puts "You guessed to low"
      count += 1 
      puts "Please enter a number to guess between 1 and 10"
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
  if num == 1 || num == 2 || num == 3
    return true 
  else 
    return false 
  end 
end 

main 