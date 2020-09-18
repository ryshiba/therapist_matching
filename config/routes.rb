Rails.application.routes.draw do
  root 'therapists#index'
  devise_for :therapists, controllers: {
    sessions: 'therapists/sessions'
  }
  devise_for :customers
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # resources :customers
end
