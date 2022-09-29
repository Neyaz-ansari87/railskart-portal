Rails.application.routes.draw do
  resources :interview_reminders
  resources :portals
  root 'home#index'

  devise_for :users do
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
