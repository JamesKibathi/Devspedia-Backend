class ApplicationController < ActionController::API
    include ActionController::Cookies

    # # JWT Code
    # before_action :authorized
    # def encode_token(payload)
    #   # should store secret in env variable
    #   JWT.encode(payload, 'my_s3cr3t')
    # end
    # def auth_header
    #   # { Authorization: 'Bearer <token>' }
    #   request.headers['Authorization']
    # end
    # def decoded_token
    #   if auth_header
    #     token = auth_header.split(' ')[1]
    #     # header: { 'Authorization': 'Bearer <token>' }
    #     begin
    #       JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
    #     rescue JWT::DecodeError
    #       nil
    #     end
    #   end
    # end
    # def current_user
    #   if decoded_token
    #     subscriber_id = decoded_token[0]['subscriber_id']
    #     subscriber = Subscriber.find_by(id: subscriber_id)
    #   end
    # end
    # def logged_in?
    #   !!current_user
    # end
    # def authorized
    #   render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    # end
end
