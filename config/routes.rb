Rails.application.routes.draw do
  resources :trainers
  resources :tokimons
  root 'pages#index'
  get '/trainers/:name', to: "trainers#show"
end
