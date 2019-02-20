Rails.application.routes.draw do
  devise_for :students
  resources :courses  
  resources :categories   
  resources :attachments 
  get 'courses/:id/show' => 'courses#show' 
  get "/download/:id" => "attachments#download"
  
  root 'welcome#index'
   
end
