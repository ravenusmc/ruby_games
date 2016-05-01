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
  end 
end 

def mode 
  puts "Hello"
end 

#All the methods below this point are "helper" methods like validation.

def valid(choice)


main 