Rails.application.routes.draw do
  devise_for :students
  resources :courses  
  resources :categories      
  devise_scope :student do
    root to: 'devise/sessions#new'
  end
end
