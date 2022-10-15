Rails.application.routes.draw do
  resources :mining_types
  resources :coins
  
  get '/welcome', to: 'welcome#index', as: '/'
  root 'welcome#index'
end
