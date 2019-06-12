class LadyHollywood::CLI

def call
    character
    get_details
end

def character
 puts "Would you like to view the top female characters in hollywood?"
    char = gets.strip
puts "Do you want the ranking for movies or for shows?"
    char = gets.strip

 puts "Sorry, your input is invalid."
end

def get_details
puts  "Enter the number of the ranking you'd like more info on or type list to see the deals again or type exit:"
    input = gets.strip

end

end
