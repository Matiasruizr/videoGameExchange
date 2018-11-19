Rails.application.routes.draw do
  resources :regions
  resources :provincia
  resources :comunas
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
