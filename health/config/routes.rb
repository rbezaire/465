Rails.application.routes.draw do
  resources :recipes do
	resources :ratings, shallow: true
	resources :images, shallow: true
  end

  devise_for :users

  root 'recipes#index'

end
