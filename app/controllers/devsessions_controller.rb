class DevsessionsController < ApplicationController

    def create
        dev=Dev.find_by(username:params[:username])
        if dev&.authenticate(params[:password])
            session[:user_id]=dev.id
            # render json:dev,status: :created
            render json:{success:"Welcome #{dev.username}"}
        else
            render json:{error:"Invalid username or password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        return head :no_content
    end
end
