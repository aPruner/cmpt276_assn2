Rails.application.routes.draw do
  resources :trainers
  resources :tokimons
  root 'application#index'
end
