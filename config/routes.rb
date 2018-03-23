# frozen_string_literal: true
Rails.application.routes.draw do
  resources :plant_sensors
  resources :plants
  resources :phases
  resources :strains
  resources :phenotypes
  resources :lightings
  resources :light_models
  resources :equipment
  resources :cameras
  resources :room_settings
  resources :lumen
  resources :air_qualities
  resources :temperatures
  resources :humidities
  resources :sensors
  resources :rooms
  resources :facilities
  resources :addresses
  resources :cities
  resources :states
  resources :cultivators
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
