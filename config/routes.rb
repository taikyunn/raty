Rails.application.routes.draw do
  resources :star, only: [:index, :create, :new]
  root to:  'star#index'
end
