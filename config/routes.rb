Rails.application.routes.draw do
  devise_for :students
  resources :courses  
  resources :categories
  get 'categories/:id/show' => 'categories#show'     
  devise_scope :student do
    root to: 'devise/sessions#new'
  end
end
