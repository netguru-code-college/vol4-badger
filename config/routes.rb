Rails.application.routes.draw do
  # devise_for :students
  get 'categories/index'
  root 'categories#index'

  resources :categories
end
