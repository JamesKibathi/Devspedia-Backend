# Devspedia Backend

## Table of contents

- [Description](#description)
- [Contributors](#contributors)
- [Technologies Used](#technologies-used)
- [Requirements](#requirements)
- [Configuration](#Configuration)
- [Database Creation](#database-creation)
- [Deployment Instructions](#deployment-instructions)
- [Routes](#routes)
- [License](#License)
- [Authors' Infor](#authors-infor)

## Description

Devspedia backend has the following functionalities:

- Authentication:

  1. A subscriber can signup and signin
  2. A dev can signup and signin

- Authorization

  1. A subscriber must be logged in to see premmium articles
  2. A dev must be logged in to create or delete an article, view all their aricles, create profile and edit profile

- CRUD operations

  The routes for these and other functionalities are provided on the [Routes](#routes) section.

## Contributors

- James Njenga
- Maureen Kamau

## Technologies Used

- Ruby on rails for backend
- PostgreSQL for database​

## Requirements

- Ruby 2.7.4

## Configuration

```
$ git clone https://github.com/JamesKibathi/Devspedia-Backend
$ cd Devspedia-Backend
$ git remote rm origin
```

Connect the GitHub remote repository to your local repository and push up your code:

```
$ git remote add origin git@github.com:your-username/your-project-name.git
$ git push -u origin main
```

You can then run the following commands to get started:

```
$ bundle install
$ rails s
```

### Database creation

You need to have postgresql installed.
If not, use the following commands:

```
$ apt install libpd-dev postgresql-11
$ sudo -u postgres psql
$ create database MyDatabase
$ alter user postgres with encrypted password 'MyPassword'
$ \q
```

### Deployment instructions

- You can deploy on a platform of choice eg railway and render.

## Routes

```
  # display all articles
  get "/articles",to:"articles#index"

  # display one article
  get "/articles/:id",to:"articles#show"

  # create an article
  post "/articles",to: "articles#create"

  # display all devs
  get "/devs", to: "devs#index"

    # display one dev
  get "/devs/:id", to: "devs#show"

  # Display all dev profile
  get "/profile", to: "profiles#index"

    # Display dev profile
  get "/profile/:id", to: "profiles#show"

     # Dev creates profile
  post "/profile", to: "profiles#create"

  # Dev updates profile
  patch "/profile/:id", to: "profiles#update"


  #sign up a user - subscribe a user
  post "/signup",to: "subscribers#create"

  # display all subscribers
  get "/subscribers", to: "subscribers#index"

  #display specific subscriber
  get "/subscribers/:id", to: "subscribers#show"

  #Login and logout a user

  delete "/logout", to: "sessions#destroy"

  # JWT OPTION -login user (susbscriber)
  post "/login-subscriber", to: "jwt#create"

  # Sign-up dev
  post "/signup-dev",to: "devs#create"


   # JWT OPTION -login dev
   post "/logindev", to: "dev_jwt#create"


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
  delete "/myarticles/:id", to: "displaydevarticles#destroy"

```

## License

Copyright (c) 2022 James Njenga

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Authors' Infor

- [James Njenga](#james.njenga@student.moringaschool.com)
- [Maureen Kamau](#mkaymaureen@gmail.com)
