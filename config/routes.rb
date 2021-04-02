Rails.application.routes.draw do
  resources :animals
  resources :books
  resources :authors
  resources :suppliers
  resources :products
  resources :posts #instead of creating each method route for posts separately, we can use this
  root 'posts#index' #now this view will load at start
end
