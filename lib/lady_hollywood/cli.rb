class LadyHollywood::CLI

def call
    hollywood
  #  movies
  #  shows
    get_details
end

def hollywood
    puts "Welcome to Lady Hollywood Gem! Would you like to view the top female characters in hollywood?[Y/N]"
          answer = gets.strip
    if answer == "n" || answer == "N"
      puts "Sorry to hear that! Let's play another time. Bye bye!"
      exit
      # add in a entry for invalid entry
    else
       puts "Do you want the female ranking for movies or shows? Please enter [M/S]"
     end
            char = gets.strip
    if char == "movie" || char == "MOVIE"|| char == "m" || char == "M"
          puts "Here is the list of top female characters in hollywood movies"
           #list_movies return array of top female characters in movies
    elsif char == "shows" || char == "SHOWS"|| char == "s" || char == "S"
          puts "Here is the list of top female characters in hollywood shows"
           #list_shows return array of scapped data for shows
    else
          puts "Sorry, your input is invalid, Please try again."
          return hollywood #need to add in a loop to reask the question
end

def get_details
puts  "Enter the number of the ranking you'd like more info on"
puts "Type list to see the the full list again"
puts "Or type [exit] to exist:"
    input = gets.strip

end

end
end
