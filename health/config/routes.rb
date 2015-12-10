Rails.application.routes.draw do
  resources :recipes
  resources :images
  resources :ratings
  devise_for :users

  root 'health#index'

end
