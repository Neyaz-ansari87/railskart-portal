Rails.application.routes.draw do
  resources :interview_reminders
  resources :portals
  root 'home#index'
<<<<<<< HEAD
  devise_for :users do
    end

 
=======
  devise_for :users
>>>>>>> 4d4ce557f1b3c23e1954736c983db93d61653334
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
