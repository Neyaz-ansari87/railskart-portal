Rails.application.routes.draw do
<<<<<<< HEAD
  resources :portals
  root 'home#index'
  devise_for :users do
    get '/users/sign_in'
    get '/users/sign_out'
  end
=======
  root 'home#index'
>>>>>>> 634fd7cc21809c4f33dfbd305552c01bf07ed5b4
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
