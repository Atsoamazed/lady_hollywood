Proposal CLI Gem

GitHub repository: https://github.com/Atsoamazed/lady_hollywood

Primary Website: https://www.hollywoodreporter.com/lists/50-best-female-characters-entertainment-industry-survey-results-951483

What: LadyHollywood Cli Gem

Goal:
Build a scraper that scrapes Hollywood Reporter article on Top female characters in Hollywood.

Steps:
 Find the id or class for the ranking, title, actress name, and summary.
Behavior:
The scraper will return the first level  list of  ranking and character.
Second level will return  actress name and  title  [get_details]

Additional Behavior:
They will also be able to use the command [rank] to display all ranking.
Use [actress] to display all actress
Use title to display [title] in ranked order.
 Or by typing the ranking number to get the title, character and actress.
Create array and add the extracted data to list_actress, list_title, list_character


Expected results

First Level
List ranking should return ranking and character name
1. Juno
2. Peggy Olson

Second Level
List details should returns ranking, title and actress

1. Juno - Played by: Ellen Page
2. Mad Men - Played by: Elisabeth Moss


List by ranking entry [1-50] returns ranking, character, title, actress and summary
1. Juno
Played by: Ellen Page 
Summary: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


Bonus**
List by actress
1. Ellen Page
2. Elisabeth Moss

List by Title
1. Juno
2. Mad Men


Advanced:
Make it pretty and add some color and spazzes
Colorize gem
Box gem
