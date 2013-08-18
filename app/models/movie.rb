class Movie < ActiveRecord::Base
  attr_accessible :cast, :desc, :genre, :name, :other_information, :poster, :rating, :reviews, :similar_movies, :trailer, :tweets
 
end
