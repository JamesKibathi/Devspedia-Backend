Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/articles",to:"articles#index"
  get "/articles/:id",to:"articles#show"
  post "/articles",to: "articles#create"

  # display all devs
  get "/devs", to: "devs#index"

    # display one dev
  get "/devs/:id", to: "devs#show"
  

    # Display dev profile
  get "/profile/:id", to: "profiles#show"

     # Dev creates profile
  post "/profile", to: "profiles#create"

  # Dev updates profile
  patch "/profile:id", to: "profiles#update"


  #sign up a user - subscribe a user
  post "/signup",to: "subscribers#create"
  
  #display specific subscriber 
  get "/me", to: "subscribers#show"

  #Login and logout a user 
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # JWT OPTION -login user (susbscriber)
  # post "/login-subscriber", to: "jwt#create"

  # Sign-up dev 
  post "/signup-dev",to: "devs#create"

  #Dev login and Logout
  post "/login-dev",to: "devsessions#create"
  delete "/logout-dev",to: "devsessions#destroy"

   # JWT OPTION -login dev 
  #  post "/logindev", to: "dev_jwt#create"
 

  # free articles
  get "/freearticles",to:"freearticles#index"

  # one free article
  get "/freearticles/:id",to:"freearticles#show"

  # premium articles
  get "/premiumarticles", to:"premiumarticles#index"

  # one premium article
  get "/premiumarticles/:id", to:"premiumarticles#show"

  # display all dev articles
  get "/myarticles", to: "displaydevarticles#index"

  # display one dev article
  get "/myarticles/:id", to: "devs#show"

  # dev creates new article
  post "/myarticles", to: "displaydevarticles#create"

  # dev updates an article
  patch "/myarticles/:id", to: "displaydevarticles#update"

  # Dev deletes an article
  delete "/myarticles/:id", to: "displaydevarticles#create"

end
