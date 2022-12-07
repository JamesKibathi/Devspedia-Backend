class SessionsController < ApplicationController
    # Create user session
    def create
        subscriber=Subscriber.find_by(username:params[:username])
        if subscriber&.authenticate(params[:password])
            session[:user_id]=subscriber.id
            # render json: subscriber
            render json: {success:"Welcome #{subscriber.username}"}
        else
            render json:{error:"Invalid username or password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id

      return head :no_content
    end
end
