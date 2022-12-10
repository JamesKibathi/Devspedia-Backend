class SubscribersController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :invalid_credentials
 skip_before_action :authorized, only:[:create,:index] 
   
 #  Add a new subscriber - sessions way
    # def create
    #     subscriber=Subscriber.create!(sub_params)
    #     session[:user_id]=subscriber.id
    #     render json: subscriber, status: :created
    # end

        # # Create Subscriber -JWT way
         def create
            subscriber=Subscriber.create!(sub_params)
            render json: subscriber, status: :created
        end


    #All subscibers
       def index
        subscriber=Subscriber.all
        render json: subscriber
        end
        
    # My account- sessions way
        # def show
        #     # subscriber=Subscriber.find_by(id:session[:user_id])
        #     subscriber=Subscriber.find(session[:user_id])
        #     render json: subscriber, status: :created
        # end

    # My account -JWT way
        def show
            subscriber=Subscriber.find(params[:id])
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
