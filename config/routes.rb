Rails.application.routes.draw do
  resources :tests
  root 'index#index'
end
