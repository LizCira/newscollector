class ArticlesController < ApplicationController

  def index
    @articles = Article.all.sort_by(&:id)
    @article = Article.new
    @comment = Comment.new
  end

  def create
    Article.create(article_attributes)
    redirect_to root_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update_attributes(article_attributes)
    redirect_to root_path
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to root_path
  end

 private

  def article_attributes
    params.require(:article).permit(:title, :url, :description, :image, :id)
  end


end
