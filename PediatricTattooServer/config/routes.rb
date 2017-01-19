Rails.application.routes.draw do
  root 'patients#new'

  resources :patients do
  	get :search, on: :collection
  	get :pain_log, on: :member
  end
  resources :pain_logs
end
