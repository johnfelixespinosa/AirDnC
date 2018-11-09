Rails.application.routes.draw do
 devise_for :users
 resources :listings
 resources :profiles
 resources :bookings

 resources :listings do
  resources :bookings, only: [:create]
 end

 resources :users do
  resource :profile, only: [:new, :edit, :create, :update]
  resources :listings
 end


 root "listings#index"

end
