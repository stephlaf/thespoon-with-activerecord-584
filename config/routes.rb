Rails.application.routes.draw do
  # verb 'path', to: 'controller#action', as: :prefix

  # See all restaurants
  get '/restaurants', to: 'restaurants#index'
  
  # Add a restaurant >> 2 steps process
  # form >> submit
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'

  # See one restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Modify a restaurant >> 2 steps process
  # prefilled form >> submit
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'

  # Delete a restaurant
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # Generate all CRUD routes (or a subset)
  # resources :restaurants

  # Generate a subset of CRUD routes
  # resources :restaurants, only: [:index, :show]
  # resources :restaurants, except: [:index, :show]
end
