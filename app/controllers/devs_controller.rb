class DevsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def index
        devs=Dev.all
        render json: devs
    end

    def show
        dev=Dev.find(params[:id])
        render json:dev
    end
    
    private

    def record_not_found
      render json: {error:"dev not found"}, status: :not_found
    end


end
