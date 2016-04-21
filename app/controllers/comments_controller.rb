class CommentsController < ApplicationController
  def create
    get_article.comments.create({author: 'Jogn', body: '906090'})
  end

  private
    def get_article
      Article.find(params[:article_id])
    end
end
