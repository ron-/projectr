Projectr::Application.routes.draw do
  root :to => 'home#index'

  resources :movies, :tickets, :users



  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
