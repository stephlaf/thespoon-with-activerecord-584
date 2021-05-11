Rails.application.routes.draw do
  # CRUD CREATE, READ, UPDATE, DELETE

  # verb 'path', to: 'controller#action', as: :prefix

  # # See all restaurants
  # get '/restaurants', to: 'restaurants#index'
  
  # # See one restaurant
  # get '/restaurants/:id', to: 'restaurants#show'

  # # Add a restaurant >> 2 steps process
  # # form >> submit >> ???
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'

  # # Modify a restaurant >> 2 steps process
  # # prefilled form >> submit
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # patch '/restaurants/:id', to: 'restaurants#update'

  # # Delete a restaurant
  # delete '/restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants
end
