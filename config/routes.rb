Rails.application.routes.draw do
  resources :projects
  resources :tasks
  resources :projects do
    resources :tasks, controller: 'projects/tasks'
  end
  scope module: 'admin' do
    resources :articles, :comments
  end
  resources :session, only: [:create]
  get 'tweets/index'
  get 'tweets/new'
  resources :tweets
  resources :employees
  resources :animals
  resources :books
  resources :authors
  resources :suppliers
  resources :products
  resources :posts #instead of creating each method route for posts separately, we can use this
  root 'posts#index' #now this view will load at start
end
