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
          char = gets.strip.downcase
      if char == "movie" || char == "m"
          puts "Here is the list of top female characters in hollywood movies"
           list_movies #list_movies return array of top female characters in movies
      elsif char == "shows" || char == "s"
          puts "Here is the list of top female characters in hollywood shows"
          list_shows
      else
          puts "Sorry, your input is invalid, Please try again."
      return menu until char == "exit" #need to add in a loop to reask the question
      end
    end

=begin




            def list_ranking
            @ranking = LadyHollywood::Hollywood.ranks
            @ranking.each.with_index(1) do |rank, i|
            end
            end
=end
  def get_details
    puts  "Enter the number of the ranking you'd like more info on"
    puts "Type list to see the the full list again"
    puts "Or type [exit] to exist:"
    input = gets.strip
  end
end #class ending
