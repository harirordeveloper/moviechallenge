class MoviesController < ApplicationController
  
  before_filter :authenticate_user!, :except=>[:index]
  def index
    
  end

  def find_movie
   @movie = RottenMovie.find(:title => params[:title], :expand_results => true, :limit => 1)
  end 

end
