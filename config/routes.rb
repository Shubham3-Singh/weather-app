Rails.application.routes.draw do
  
  
  get 'weather/index'
  root 'user_authenticates#new'

  get '/signup', to: 'user_authenticates#new'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'

  get '/logout', to: 'session#logout'
  # delete 'logout', to: 'session#logout', as: 'logout'


  resources :user_authenticates, :weather, :session
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
