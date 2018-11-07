Rails.application.routes.draw do
 devise_for :users
 resources :listings
 resources :profiles

 resources :users do
  resources :listings
 end

 resources :users do
  resource :profile, only: [:new, :edit, :create, :update]
 end

 root "listings#index"

end
