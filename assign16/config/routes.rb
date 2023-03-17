Rails.application.routes.draw do
  get '/photos(/:id)', to: 'photos#show'
  resources :photos
  namespace :admin do
    resources :users
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
