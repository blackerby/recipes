Rails.application.routes.draw do
  resources :users
  root 'recipes#index'
  
  resources :recipes
end
