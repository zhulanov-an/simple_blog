class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]
  before_action :set_article, :only => [:edit, :show, :update, :destroy]
  def index
    @articles = Article.all
  end

  def edit

  end

  def show

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    respond_to do |format|
      if @article.save
        format.html {redirect_to articles_url, notice: 'Article was successfully created.'}
      else
        format.html {render action: "new"}
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html {redirect_to article_url, notice: 'Article was successfully updated.'}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html {redirect_to articles_path, notice: 'Article was succerfully destroyed.'}
    end
  end


  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
