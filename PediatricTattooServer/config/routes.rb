Rails.application.routes.draw do
  root 'patients#new'

  resources :patients do
  	get :search, on: :collection
  end
  resources :pain_logs
end
