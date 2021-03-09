Rails.application.routes.draw do
  resources :users
  root 'recipes#index'
  
  resources :recipes
  resource :session, only: [:new, :create, :destroy]
end
