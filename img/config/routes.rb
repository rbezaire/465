Rails.application.routes.draw do
  resources :images do
    resources :tags, :shallow => true
    resources :image_users, :shallow => true
  end
  devise_for :users
  
  root 'images#index'
  

end
