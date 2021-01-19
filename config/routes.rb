Rails.application.routes.draw do
  resources :authors
  root 'home#index'
  get 'home/index'
  get 'home/about'
  resources :authors do
    resources :books
  end
  resources :books
  mount ReportsKit::Engine, at: '/'
  
end
