class DisplaydevarticlesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid , with: :article_not_created
    rescue_from ActiveRecord::RecordNotFound, with: :article_not_found

    # def create - sessions way
    #     user=User.find(session[:user_id])
    #     recipe=Recipe.create!(user_id:user.id,title:params[:title],instructions:params[:instructions],minutes_to_complete:params[:minutes_to_complete])
    #     render json: recipe, serializer:RecipesSerializer, status: :created  
    # end


    # Create Dev -JWT way
    def create
      user=User.find(params[:id])
      recipe=Recipe.create!(user_id:user.id,title:params[:title],instructions:params[:instructions],minutes_to_complete:params[:minutes_to_complete])
      render json: recipe, serializer:RecipesSerializer, status: :created  
    end
 
   
    # Display all dev articles
    def index
       dev=Dev.find(session[:user_id])
       articles = Article.where(dev_id: dev.id)
       render json: articles
    end

    # Display one dev article
    def show
        dev=Dev.find(session[:user_id])
        article = Article.where(dev_id:dev.id).find(params[:id])
        render json:article
      end

    # dev create new article
    def create
        dev=Dev.find(session[:user_id])
        article=Article.create!(dev_id:dev.id,title:params[:title],content:params[:content],minutes_to_read:params[:minutes_to_read],featured_image:params[:featured_image],likes:params[:likes],is_free:params[:is_free])
        render json: article, status: :created  
    end

    # updates an article
    def update
        dev=Dev.find(session[:user_id])
        article = Article.where(dev_id:dev.id).find(params[:id])
        if article
          article.update(profile_params)
          render json: article
        else
          render json: { "errors": ["Could not update article"] }, status: :bad_request
        end
      end

    # delete an article
     def destroy
        dev=Dev.find(session[:user_id])
        article = Article.where(dev_id:dev.id).find(params[:id])
        article.destroy
        head :no_content
     end

    private

    def article_params
        params.permit(:title,:content,:minutes_to_read,:featured_image,:likes,:is_free,:dev_id)
      end

      def article_not_found
        render json: {"errors": ["could not find article"] }, status: :not_found
     end 

      def article_not_created
        render json: {"errors": ["could not create article"] }, status: :unprocessable_entity
     end
end
