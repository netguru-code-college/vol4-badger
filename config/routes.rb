Rails.application.routes.draw do
  devise_for :students
  resources :courses do
    resources :resources
  end
  get 'courses/:id/show' => 'courses#show'

  resources :categories

  resources :attachments
  get "/download/:id" => "attachments#download"

  devise_scope :student do
    root to: 'devise/sessions#new'
  end

  resources :attachments
  get 'courses/:id/show' => 'courses#show'
  get "/download/:id" => "attachments#download"

  root 'welcome#index'

end
