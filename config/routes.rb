Rails.application.routes.draw do
  resources :portals
  root 'home#index'
  devise_for :users do
    get '/users/sign_in'
    get '/users/sign_out'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
