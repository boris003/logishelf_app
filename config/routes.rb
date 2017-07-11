Rails.application.routes.draw do

  get '/' => 'devices#index'
  resources :devices

#     Prefix Verb   URI Pattern               Controller#Action
#    devices GET    /devices(.:format)          devices#index
#            POST   /devices(.:format)          devices#create
# new_device GET    /devices/new(.:format)      devices#new
#edit_device GET    /devices/:id/edit(.:format) devices#edit
#     device GET    /devices/:id(.:format)      devices#show
#            PATCH  /devices/:id(.:format)      devices#update
#            PUT    /devices/:id(.:format)      devices#update
#            DELETE /devices/:id(.:format)      devices#destroy

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/available' => 'devices#constructions'


end