Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'caches#index'

  post '/set_cache', to: 'caches#set_cache'
  get '/retrieve_cache', to: 'caches#retrieve_cache'

  get '/health', to: (proc { [200, {}, []] })
end
