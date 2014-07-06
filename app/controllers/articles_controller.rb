class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @article = Article.new
  end

  # def show
  #   @article = Article.find(params[:id])

  #   redirect_to root_path
  # end

  def create
    Article.create(article_attributes)
    redirect_to root_path
  end




  def destroy
    Article.find(params[:id]).destroy
    redirect_to root_path
  end

 private

  def article_attributes
    params.require(:article).permit(:title, :url, :description, :image)
  end


end
