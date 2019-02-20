Rails.application.routes.draw do
  get 'student/show'
  devise_for :students
  resources :courses do
    resources :resources
  end
  get 'courses/:id/show' => 'courses#show'

  resources :categories

  resources :attachments
  get "/download/:id" => "attachments#download"

  resources :attachments
  get 'courses/:id/show' => 'courses#show'
  get "/download/:id" => "attachments#download"

  root 'welcome#index'

  get 'student/:id/show' => 'student#show'
end
