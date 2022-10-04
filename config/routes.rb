Rails.application.routes.draw do
<<<<<<< HEAD
  resources :interview_reminders do
  member do
    get :done
    end
  end
=======
  resources :interview_reminders
>>>>>>> 59b0e8f8d6ee3f8182b2cb1767a8da9acee52db5
  resources :portals
  root 'home#index'

  devise_for :users do
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
