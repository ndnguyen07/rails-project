Rails.application.routes.draw do
  resources :builds
  resources :user_accounts
  resources :account_champions
  resources :champions
  resources :accounts
  resources :users

  delete '/logout', to: 'sessions#destroy'

  get '/analytics', to: 'accounts#analytics'

  root :to=>"users#index"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
