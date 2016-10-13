Rails.application.routes.draw do

  get '/follow/:id' => 'follows#create', :as => 'follow_new'
  delete '/follow/:id' => 'follows#destroy', :as => 'follow_destroy'

  get 'follows/index'
  get 'follows/show'

  root :to => 'pages#home'

  resources :doodles, :artists

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
