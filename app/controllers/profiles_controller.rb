class ProfilesController < ApplicationController
    def index
        profile=Profile.all
        render json:profile
    end

    def show
        profile=Profile.find(params[:id])
        render json:profile
    end

    def create
        profile=Profile.create(profile_params)
        render json:profile
    end
    
    private
    def profile_params
        params.permit(:bio,:image_url,:linkedin,:github,:twitter,:dev_id)
    end
end
