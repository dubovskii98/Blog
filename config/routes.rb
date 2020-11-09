Rails.application.routes.draw do
  resources :categories
  resources :posts
  root to: 'pages#index'
end
