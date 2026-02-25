Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get("/places", { :controller => "places", :action => "index" })
  get("/entries", { :controller => "entries", :action => "index" })
  resources :places
  resources :entries
  root "places#index"
end
