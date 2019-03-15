class ArticlesController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  def show
    @article  = Article.find(params[:id])
  end

  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to @article
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end
  
  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_post
    @article = Article.find(params[:id])
  end
end
