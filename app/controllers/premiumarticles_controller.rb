class PremiumarticlesController < ApplicationController
  #before_action :authorize
  rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found

  def index
    articles = Article.where(is_free: false).includes(:dev).order(created_at: :desc)
    render json: articles 
  end

  def show
    article = Article.where(is_free: false).find(params[:id])
    render json: article
  end

  private

  def resource_not_found
    render json: { error: "Article not found" }, status: :not_found
  end

  def authorize
    # sub=Subscriber.find(session[:user_id])
    return render json: {errors: ["Unauthorized access"]}, status: :unauthorized unless session.include? :user_id
  end
end
