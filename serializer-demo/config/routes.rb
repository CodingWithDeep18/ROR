Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :book
    end
  end

  namespace :api do
    namespace :v2 do
      resources :book
    end
  end



  get '/not_found', to: 'book#not_found'
  get '/unauthorized', to: 'book#unauthorized'
  get '/server_error', to: 'book#server_error'
end
