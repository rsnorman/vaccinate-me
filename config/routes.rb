Rails.application.routes.draw do
  resources :interaction_events
  resources :event_types
  resources :interactions
  resources :interaction_types
  resources :messages
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :messages, only: :create
  end
end
