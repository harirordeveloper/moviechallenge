Quantumpractice::Application.routes.draw do
  devise_for :users
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
  resources :movies
  get "home/index"

  match "/findmovie"=>"movies#find_movie"

  
  match "/projects"=>"home#projects"

  root :to => 'movies#index'

end
