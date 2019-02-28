Rails.application.routes.draw do
  resources :thoughts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'thoughts#index'

  post '/thought/:thougth_id/observation/', to: 'observations#create', as: 'create_observation'
end
