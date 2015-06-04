Rails.application.routes.draw do

  
root to: 'home#index'

# get '/crims', to: 'crims#index'

get '/vehicles', to: 'vehicles#index'

get '/search_results',  to: 'search_results#index'

resources :home

resources :crims
end
