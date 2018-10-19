Rails.application.routes.draw do
  get 'articles/index'
  post 'articles/create'
  root controller: :articles, action: :index
  resources :articles
end
