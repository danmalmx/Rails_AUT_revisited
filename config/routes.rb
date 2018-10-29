Rails.application.routes.draw do
  resources :articles, only: [:index, :create, :show, :new, :update, :edit]

  root controller: :articles, action: :index
  
  get 'articles/index', to: 'articles#index'
  get 'articles/:id/edit', to: 'articles#edit'
  patch 'articles/:id', to: 'articles#update'
  post 'articles/:id', to: 'articles#create'
end
