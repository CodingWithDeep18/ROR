Rails.application.routes.draw do
  get 'project/show'
  resources :employees

  root 'employees#new'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
