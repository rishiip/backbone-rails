Rails.application.routes.draw do
  root to: 'main#index'
  resources :my_models
end
