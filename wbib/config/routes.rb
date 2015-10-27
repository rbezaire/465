Rails.application.routes.draw do

	resources :reference do
		resources :topic, shallow: true
	end

	root 'references#index'

end
