class FreearticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found
  # rescue_from ActiveRecord::RecordNotFound, with: :unauthorized
  skip_before_action :authorized
  def index
    articles = Article.where(is_free: true).includes(:dev).order(created_at: :desc)
    render json: articles
    
  end

  def show
    article = Article.where(is_free: true).find(params[:id])
    render json: article
  end

  private

  def resource_not_found
    # render json: { error: "Premium article" }, status: :unauthorized
    render json: { error: "Article could not be found" }, status: :not_found
  end
  
end
