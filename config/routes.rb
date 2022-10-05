Rails.application.routes.draw do
<<<<<<< HEAD
=======

>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
  resources :interview_reminders do
  member do
    get :done
    end
  end
<<<<<<< HEAD
  resources :portals do 
    member do
      get :shedule_interview
    end
  end

=======


  resources :portals
>>>>>>> 6f92786a2693411576b8b7958fbe395123fa7e1c
  root 'home#index'

  devise_for :users do
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
