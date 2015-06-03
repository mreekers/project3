Rails.application.routes.draw do
  
root to: 'home#index'

get '/codes', to: 'codes#index'

resources :home
end
