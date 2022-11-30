Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index' #Dashboard
    resources :admins #Administradores
    resources :subjects #Assuntos
    resources :questions #Perguntas
  end
  
  devise_for :admins
  devise_for :users

  get 'home', to: 'site/welcome#index'
  
  root to: 'site/welcome#index'
end
