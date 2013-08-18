Quantumpractice::Application.routes.draw do
  resources :movies


  devise_for :users

  get "home/index"

  match "/findmovie"=>"movies#find_movie"

  root :to => 'movies#index'
  match "/projects"=>"home#projects"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
