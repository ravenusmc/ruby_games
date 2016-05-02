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
end 

########### All of the validation or 'extra' methods, if I need them will be here. #######
def valid(choice)
  if choice == "y" || choice == "n"
    return true
  else 
    return false
  end 
end 

main