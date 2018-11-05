Rails.application.routes.draw do
 root "listings#index"
 resources :listing

end
