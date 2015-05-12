Rails.application.routes.draw do
  root to: 'main#index'
  resources :my_models, only: [:index, :update, :show]
end
