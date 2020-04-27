Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  post '/users/sign_up', to: 'devise/registrations#new'
  post '/homes/guest_sign_in', to: 'homes#new_guest'
  resources :homes, only: [:index, :new, :create, :destroy]
  resources :items, only: [:index]

end
