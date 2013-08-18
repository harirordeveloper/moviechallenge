module MoviesHelper

	def find_movie_by_type(type)
		 @movies = RottenList.find(:type => type).first(20)
		 return @movies
	end


	def trailer
       i= 0 
       video =  HTTParty.get("#{@movie.links.clips}?apikey=46ahrg93dj6aqf8g7vt7yaaa") 
       video["clips"].each do |item| 
          if i<1 
            @trailer = item["links"]["alternate"] 
          end 
          i=i+1 
       end 
       return @trailer
	end

	def similar_movies
       
        response =  HTTParty.get("#{@movie.links.similar}?apikey=46ahrg93dj6aqf8g7vt7yaaa") 

         @similar_movies = response["movies"]
         return @similar_movies
	end
end
