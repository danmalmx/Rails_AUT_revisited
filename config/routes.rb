Rails.application.routes.draw do
  resources :articles

  root controller: :articles, action: :index
  
  get 'articles/index', to: 'articles#index'
  post 'articles/:id', to: 'articles#create'
  # patch 'articles/:id', to: 'articles#update'
end
