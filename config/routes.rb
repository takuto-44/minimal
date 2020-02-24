Rails.application.routes.draw do
  root to: 'homes#index'
  devise_for :users
  post '/users/sign_up', to: 'devise/registrations#new'
  # post '/users/sign_in', to: 'devise/sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
