Rails.application.routes.draw do
  resources :images
  resources :recipes
  resources :ratings
  devise_for :users

  root 'recipes#index'

end
