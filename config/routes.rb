Rails.application.routes.draw do
  devise_for :users
  resources :publicacions
  resources :games
  get 'index/index'
  resources :regions
  resources :provincia
  resources :comunas
  resources :usuarios

  root :to => 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
