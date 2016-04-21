class CommentsController < ApplicationController
  def create
    get_article.comments.create(get_params)
    redirect_to article_path(get_article)
  end

  private

  def get_params
    params.require(:comment).permit(:author, :body)
  end

  def get_article
      Article.find(params[:article_id])
  end
end
