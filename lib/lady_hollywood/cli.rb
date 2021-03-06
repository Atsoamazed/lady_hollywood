# This is where all the cli user interaction is.
class LadyHollywood::CLI
  puts "Welcome to Lady Hollywood Gem!"
  puts "This Cli will list the Top female characters in Hollywood"
  puts "To quit, type 'exit'."

  def call
    start
    list_ranking
    get_details
    menu_details
    list_details
    list_rank
  end

  def start
    puts "Would you like to continue to view the top female characters in hollywood?[Y/N]"
          answer = gets.strip.downcase
    if answer == "n"
      puts "Sorry to hear that. Let's play another time! Bye bye."
      exit
    end
    puts "Here is the list of top 50 female characters in hollywood"
    list_ranking #Returns the list of ranking and character
  end

    #def menu
    #      puts "Here is the list of top 50 female characters in hollywood"
          #list_ranking #Returns the list of ranking, title and character
  #  end

#WIP
def list_ranking # <-move this to a different file
  @ranking = LadyHollywood::Hollywood.ranks
   @ranking.each.with_index(1) do |rank, i|
     puts "#{i}. - #{rank.title}"
end
get_details
end

# Also need to add to add in search by ranking, title, name option

  def get_details
    puts "Would you like to get more details on the top ranked female characters?[Y/N]"
    a = gets.strip.downcase
    if a == "y"
    puts "Please select from the following:"
      end
      menu_details #this needs to return more_details method <broken
    if a == "n"
    puts "Okay bye bye!"
    exit
      else
    puts "Sorry, your input is invalid, Please try again."
    return get_details


      def menu_details #details menue
    puts "A) Enter the ranking number you would like more details [1-50]" # <- return character, title, actress and summary then repeat menu
    puts "B) Type [list] to see the the full list again" # < return rank, character and titile
    puts "C) Type [quit] to exit:"
    a = gets.strip.downcase
    end


        #return menu until input == "exit"
      if a == "A" || a == "a" || a == "list"
          list_details #details include actress name, and summary
      elsif a == "B" ||a == "list"
          list_ranking #repeat the list
      elsif a == "C" || a == exit #exits

      else
          puts "Sorry, your input is invalid, Please try again."
          menu_details
      end
      end
end # <- end to method.

def list_details # <-move this to a different file
  @ranking = LadyHollywood::Hollywood.ranks
   @ranking.each do |rank, p|
     puts "[#{rank.title} - Played by: #{rank.name}]"
end
more_details
end

=begin
# working on getting this to work to search by individual rank
def list_rank
  @ranking = LadyHollywood::Hollywood.ranks
   @ranking.collect do |rank, p|
     puts "[#{rank.title} - Played by: #{rank.name} - #{rank.summary}]"
end
=end
end #class ending
