Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path  route ("/")
  # root "articles#index"
  root to: "sessions#login"
  resources :products do
  get 'search', on: :collection
  end

  resources :users, only: [:new, :create, :update, :edit, :show, :destroy]

  get '/login', to: 'sessions#create'
  post '/login', to: 'sessions#create'
  # post '/logout', to: 'sessions#destroy'
  # get '/logout', to: 'sessions#destroy'

end