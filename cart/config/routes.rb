Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "products#index"
  get "/carts/add_to_cart", to: "carts#add_to_cart"
  delete "/carts/remove_from_cart", to: "carts#remove_from_cart"
  resources :products
  resources :carts
end
