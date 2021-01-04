Rails.application.routes.draw do
  resources :messages
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :messages, only: :create
  end
end
