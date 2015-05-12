Rails.application.routes.draw do
  root to: 'main#index'
  resources :my_models
  get 'my_models/:id/get_my_attributes' => 'my_models#get_my_attributes'
  get 'my_models/:my_model_id/my_attributes/:id/get_value' => 'my_models#get_value'
end
