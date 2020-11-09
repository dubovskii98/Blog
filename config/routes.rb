Rails.application.routes.draw do
  resources :categories
  resources :posts
  root to: 'pages#index'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
