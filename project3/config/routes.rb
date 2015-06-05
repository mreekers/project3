Rails.application.routes.draw do

  
root to: 'home#index'

# get '/crims', to: 'crims#index'

get '/vehicles', to: 'vehicles#index'

# get '/crims/search_results',  to: '/crims#search'

# get '/search_results', to: '/search_results#index'

get '/crims/search', to: 'crims#search'

resources :home

resources :crims
end
