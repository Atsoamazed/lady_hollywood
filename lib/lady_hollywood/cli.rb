# This is where all the cli user interaction is.
class LadyHollywood::CLI
  puts "Welcome to Lady Hollywood Gem!"
  def call
    start
    menu
    list_ranking
    get_details
  end

  def start
    puts "Would you like to view the top female characters in hollywood?[Y/N]"
          answer = gets.strip.downcase
    if answer == "n"
      puts "Sorry to hear that. Let's play another time! Bye bye."
      exit
    end
  end

    def menu
       puts "Do you want the female ranking for movies or shows? Please enter [M/S]"
       #add in for invalid entry
          char = gets.strip.downcase
      if char == "movie" || char == "m"
          puts "Here is the list of top female characters in hollywood movies"
          list_ranking #list_movies return array of top female characters in movies
      elsif char == "shows" || char == "s"
          puts "Here is the list of top female characters in hollywood shows"
        list_ranking
          return menu until char == "exit"
      else
          puts "Sorry, your input is invalid, Please try again."
     #Exist does not work. needs to break if user types exit
      end
      exit
    end

#WIP
def list_ranking
  @ranking = LadyHollywood::Hollywood.ranks #list_movies return array of top female characters in movies
   @ranking.each.with_index(1) do |rank, i, p|
puts "#{rank.number} - #{rank.title} - #{rank.summary}"
end
get_details
end

#scrape needs order its just returning in chunks.
# Also need to add to add in search by ranking, title, name option

  def get_details
    puts  "Enter the number of the ranking you'd like more info on"
    puts "Type list to see the the full list again"
    puts "Or type [exit] to exist:"
    input = gets.strip
  end


end #class ending
