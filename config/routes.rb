Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/login' => 'sessions#destroy' 


  resources :users , only: [:new, :create]

  root 'welcome#home'
end