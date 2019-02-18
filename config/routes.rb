Rails.application.routes.draw do
  devise_for :students

  devise_scope :student do
    root to: 'devise/sessions#new'
  end

end
