class SubscribersController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :invalid_credentials
   # Add a new subscriber 
    def create
        subscriber=Subscriber.create!(sub_params)
        session[:user_id]=subscriber.id
        render json: subscriber, status: :created
    end

    # My account 
   def show
    subscriber=Subscriber.find_by(id:session[:user_id])
    render json: subscriber, status: :created
   end

    private

    def sub_params
        params.permit(:username,:password,:password_confirmation,:email)
    end

    def invalid_credentials invalid
        render json:{errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    
end
