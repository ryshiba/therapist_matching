Rails.application.routes.draw do
  root 'pages#top'
  devise_for :therapists, controllers: {
    sessions: 'therapists/sessions'
  }
  devise_for :customers, controllers: {
    sessions: 'customers/sessions'
  }
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  resources :customers
  resources :therapists
end
