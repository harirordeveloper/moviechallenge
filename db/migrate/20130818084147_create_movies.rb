class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :poster
      t.string :desc
      t.string :rating
      t.string :genre
      t.string :cast
      t.string :trailer
      t.string :reviews
      t.string :tweets
      t.text :similar_movies
      t.text :other_information

      t.timestamps
    end
  end
end
