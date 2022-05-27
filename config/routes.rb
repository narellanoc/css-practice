Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get "/", :controller => "tacos", :action => "index"

  resources "users"
  resources "services"
  resources "sessions"

  get "/", :controller => "users", :action => "index"

end
