class JwtController < ApplicationController
    skip_before_action :authorized, only:[:create]

    def create
        subscriber = Subscriber.find_by(username: params[:username])
        if subscriber &.authenticate(params[:password])
            token = encode_token(subscriber_id: subscriber.id)
            render json: { subscriber: SubscriberSerializer.new(subscriber), jwt: token }, status: :accepted
        else
            render json: { errors: "Invalid email or password" }, status: :unauthorized
        end
    end
end
