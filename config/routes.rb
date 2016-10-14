Rails.application.routes.draw do
  resources :trainers
  resources :tokimons
  root 'pages#index'
end
