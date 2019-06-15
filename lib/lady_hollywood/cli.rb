# This is where all the cli user interaction is.
class LadyHollywood::CLI
  puts "Welcome to Lady Hollywood Gem!"
  def call
    start
    menu
    list_ranking
    get_details
    list_details
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
          puts "Here is the list of top 50 female characters in hollywood"
          list_ranking #Returns the list of ranking, title and character
    end

#WIP
def list_ranking
  @ranking = LadyHollywood::Hollywood.ranks
   @ranking.each.with_index(1) do |num, t|
     puts "#{rank.number} - #{rank.title}"
end
get_details
end

#scrape needs order its just returning in chunks.
# Also need to add to add in search by ranking, title, name option

  def get_details
    puts "Would you like to get more details on the top ranked female characters?[Y/N]"
    details = gets.strip.downcase
    puts "Please select from the following:"
    puts "A) Enter the number of the ranking you'd like more details[1-50]"
    puts "B) Type list to see the the full list again"
    puts "C) Type [exit] to exit:"



case details
    #return menu until input == "exit"
  when details == "A" || [1...50]
        details = gets.strip.downcase
      list_details #details include actress name, and summary
    when details == "B"
      list_ranking #repeat the list
    when details == "C" #exits
      exit
    else
      puts "Sorry, your input is invalid, Please try again."

  end
end
def list_details
  @ranking = LadyHollywood::Hollywood.ranks
   @ranking.each.with_index(1) do |rank, p|
     puts "#{rank.name} - #{rank.summary}"
end
ranking
end

end #class ending
