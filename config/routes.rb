Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/merchants', to: 'merchants#index'
  get '/items', to: 'items#index'
  get '/merchants/new', to: 'merchants#new'
  get '/merchants/:id/edit', to: 'merchants#edit'
  resources :merchants, only: [:show] do
    resources :items, only: [:index]
  end
  post '/merchants', to: 'merchants#create'
  delete '/merchants/:id', to: 'merchants#destroy'
  patch '/merchants/:id', to: 'merchants#update'

end
