Rails.application.routes.draw do
  get 'session/new'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :repos
  resources :resources # , :only => [:index]

  # get '/resources/:repo_id' => 'resources#index', :as => 'resources'
end
