class DevJwtController < ApplicationController
    skip_before_action :authorized, only:[:create]
    def create
        dev = Dev.find_by(username: params[:username])
        if dev &.authenticate(params[:password])
            token = encode_token(dev_id: dev.id)
            render json: { dev: DevSerializer.new(dev), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid username or password" }, status: :unauthorized
        end
    end
end
