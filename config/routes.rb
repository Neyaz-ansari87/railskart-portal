Rails.application.routes.draw do

  resources :interview_reminders do
  member do
    get :done ,:question
    end
  end

  resources :portals do 
    member do
      get :shedule_interview
    end
  end
# get "question" "done/question"

  root 'home#index'



  devise_for :users do
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
