Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get "/", :controller => "tacos", :action => "index"

  resources "users"
  resources "services"
  resources "sessions"

  get "/", :controller => "services", :action => "index"
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

end
