class FreearticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :unauthorized_access
  
  def index
    articles = Article.where(is_free: true).includes(:dev).order(created_at: :desc)
    render json: articles
    
  end

  def show
    article = Article.where(is_free: true).find(params[:id])
    render json: article
  end

  private

  def unauthorized_access
    render json: { error: "Premium article" }, status: :unauthorized
  end
  
end
