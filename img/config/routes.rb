Rails.application.routes.draw do
  resources :tags
  resources :image_users
  resources :images
  devise_for :users
  
  root 'images#index'
  

end
