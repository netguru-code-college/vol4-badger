Rails.application.routes.draw do
  devise_for :students
  resources :courses do
    resources :resources
  end

  resources :categories
  get 'courses/:id/show' => 'courses#show'
  devise_scope :student do
    root to: 'devise/sessions#new'
  end
end
