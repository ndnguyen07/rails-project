Rails.application.routes.draw do
  resources :account_champions
  resources :champions
  resources :accounts
  resources :users

  delete '/logout', to: 'sessions#destroy'

  root :to=>"users#index"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
