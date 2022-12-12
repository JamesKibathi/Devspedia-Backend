class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :profile_not_found
    rescue_from ActiveRecord::RecordInvalid , with: :profile_not_created

    # Display dev profile 
    # def show
    #     dev=Dev.find(session[:user_id])
    #     profile = Profile.where(dev_id:dev.id).find(params[:id])
    #     render json:profile
    # end
      # Display dev profile -JWT
          def show

            profile = Profile.all
            render json:profile
        end
    # Create profile
    # def create
    #     dev=Dev.find(session[:user_id])
    #     profile=Profile.create!(dev_id:dev.id,bio:params[:bio],image_url:params[:image_url],linkedin:params[:linkedin], github:params[:github],twitter:params[:twitter])
    #     render json:profile
    # end
  # Create profile -JWT
    def create
      profile=Profile.create!(profile_params)
      render json:profile
  end
    
    # Update Profile

    def update
        dev=Dev.find(session[:user_id])
        profile = Profile.where(dev_id:dev.id).find(params[:id])
        if profile
          profile.update(profile_params)
          render json: profile
        else
          render json: { "errors": ["Could not update profile"] }, status: :bad_request
        end
      end

    private
    def profile_params
        params.permit(:bio,:image_url,:linkedin,:github,:twitter,:dev_id)
    end

    def profile_not_found
        render json: {error:"Profile not found"}, status: :not_found
    end

    def profile_not_created
        render json: {"errors": ["could not create profile"] }, status: :unprocessable_entity
     end
end
