Rails.application.routes.draw do
  get 'session/new'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :repos
  post '/resources/:id' => 'resources#update'
  resources :resources

  resources :languages

  # get '/resources/:repo_id' => 'resources#index', :as => 'resources'
end
