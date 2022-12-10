class DevsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_credentials
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    skip_before_action :authorized, only:[:create,:index]
    
    def index
        devs=Dev.all
        render json: devs
    end

    def show
        dev=Dev.find(params[:id])
        render json:dev
    end

    # Sign-Up dev sessions way
    # def create
    #     dev=Dev.create!(dev_params)
    #     session[:user_id]=dev.id
    #     render json: dev, status: :created
    # end

     # Sign-Up dev jwt way
     def create
        dev=Dev.create!(dev_params)
        render json: dev, status: :created
    end
    
    private

    def record_not_found
      render json: {error:"dev not found"}, status: :not_found
    end

    def dev_params
        params.permit(:username,:email,:fname,:lname,:password,:password_confirmation)
    end
    
    def invalid_credentials invalid
        render json:{errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
