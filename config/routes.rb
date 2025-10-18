Rails.application.routes.draw do

  get 'new/index'
  get 'new/show'
  devise_for :users
  root to: "homes#top"


end
