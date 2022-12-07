class DisplaydevarticlesController < ApplicationController
   
    def index
       #dev=Dev.find(session[:id])
       articles=Article.all
       #(WHERE dev_id=dev.id)
       render json: articles
    end

    #check if a dev logged in
    # find article by id where id=session[:id]
end
