Rails.application.routes.draw do
  resources :trainers
  resources :tokimons
  root 'pages#index'
  get '/index', to: 'pages#index'
end
