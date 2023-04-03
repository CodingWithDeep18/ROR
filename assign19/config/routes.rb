Rails.application.routes.draw do
  root 'companies#index'
  # root 'welcome#index'
  devise_for :users, controllers: { registrations: 'users/registrations' } 
  resources :companies
  resources :projects
end
