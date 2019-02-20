Rails.application.routes.draw do
  devise_for :students

  resources :courses do
    resources :resources
  end
  resources :categories

  devise_scope :student do
    root to: 'devise/sessions#new'
  end
 
  resources :attachments 
  get 'courses/:id/show' => 'courses#show' 
  get "/download/:id" => "attachments#download"
  
  root 'welcome#index'

end
