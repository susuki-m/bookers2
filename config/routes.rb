Rails.application.routes.draw do

  get 'books/new'
  get 'books/index'
  get 'books/show'
  devise_for :users
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'
  resources :books, only: [:new, :create, :index, :show]


end
