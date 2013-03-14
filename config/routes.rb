Rockr::Application.routes.draw do

  root :to => 'home#index'

  get '/concerts/new' => 'home#new_concerts'
  post '/concerts' => 'home#create_new_concert'
  get '/venues/new' => 'home#new_venues'
  post '/venues' => 'home#create_new_venue'


end
