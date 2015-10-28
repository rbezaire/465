Rails.application.routes.draw do

  # reference's routes will be nested inside a topic for index, new, and create
  # reference route: 
  #      /topics/:topic_id/references
  #      /topics/:topic_id/references/new
  #      /topics/:topic_id/references/create

  # reference's routes will NOT be nested for show, edit, update, destroy
  # /references/:id/
  resources :topics do
    resources :references, shallow: true
  end

  root 'topics#index'

end
