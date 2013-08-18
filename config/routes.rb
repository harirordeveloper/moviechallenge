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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
