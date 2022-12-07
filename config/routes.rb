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

  #sign up a user - subscribe a user
  post "/signup",to: "subscribers#create"
  
  #display specific subscriber 
  get "/me", to: "subscribers#show"

  #Login and logout a user 
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # Sign-up dev 
  post "/signup-dev",to: "devs#create"

  #Dev login and Logout
  post "/login-dev",to: "devsessions#create"
  delete "/logout-dev",to: "devsessions#destroy"
 
  # DEV ARTICLE-SPECIFIC ROUTE
  get "/my-articles",to:"displaydevarticles#index"

end
