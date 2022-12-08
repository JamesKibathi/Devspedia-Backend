class ArticlesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

before_action :authorize

    def index
      render json:Article.all,include: ["dev"]
      # serializer:DevsSerializer
      # Should be protected
    end

    def show
      article=Article.find(params[:id])
      render json:article
      #, include: ["dev"]
    end

    def create
      article=Article.create!(article_params)
      render json:article
    end

    private

    def record_not_found
      render json: {error:"article not found"}, status: :not_found
    end

    def article_params
      params.permit(:title,:content,:minutes_to_read,:featured_image,:likes,:dev_id)
    end

  def authorize
    # sub=Subscriber.find(session[:user_id])
    return render json:{error:"Unauthorized access"}, status: :unauthorized unless session.include? :user_id
 end

end
