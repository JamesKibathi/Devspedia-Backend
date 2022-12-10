class ArticlesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
# skip_before_action :authorized
    def index
      render json:Article.all,include: ["dev"]
    end

    def show
      article=Article.find(params[:id])
      render json:article
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
      params.permit(:title,:content,:minutes_to_read,:featured_image,:likes,:is_free,:dev_id)
    end
    def authorize
      return render json: {errors: ["Unauthorized access"]}, status: :unauthorized unless session.include? :user_id
    end


end
