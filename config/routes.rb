Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/articles",to:"articles#index"
  get "/articles/:id",to:"articles#show"
  post "/articles",to: "articles#create"
  get "/devs", to: "devs#index"
  get "/devs/:id", to: "devs#show"
  get "/profiles", to: "profiles#index"
  get "/profiles/:id", to: "profiles#show"
  post "/profiles", to: "profiles#create"
 


end
