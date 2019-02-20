Rails.application.routes.draw do
  devise_for :students
  resources :courses do
    resources :resources
  end
  get 'courses/:id/show' => 'courses#show'

  resources :categories

  resources :attachments
  get '/download/:id' => 'attachments#download'

  root 'welcome#index'

  resources :course_students, only: [:destroy]
  post 'enroll' => 'course_students#create'
  get 'my_courses' => 'course_students#index'

end
