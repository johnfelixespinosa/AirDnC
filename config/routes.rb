Rails.application.routes.draw do
 devise_for :users
 root "listings#index"
 resources :listings
 resources :users do
  resources :listings
 end

end
