$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# # Find a way to accumulate the :worldwide_grosses and return that Integer
# # using director_data as input
# def gross_for_director(director_data)
# nds = directors_database
def gross_for_director(director_data)

  outer_result = []
  row_index = 0
  
  while row_index < director_data.length do
    director = director_data[row_index]
    movies = director[:movies]
    director_name = director[:name]
    puts "Here"
    outer_result << directors_totals()
    
    puts " "
    outer_result << { director_name => grand_total }
    director_counter += 1
  end
  
  outer_result
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  movie_number = 0
  grand_total = 0
   while movie_number < nds.length do 
      movie = nds[movie_number]
      gross = movie[:worldwide_gross]
      grand_total += gross
      movie_number += 1
    end
    
    grand_total
end
