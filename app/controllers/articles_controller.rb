class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def create
    Article.create(article_attributes)

    redirect_to root_path
  end

 private

  def article_attributes
    params.require(:article).permit(:title, :url, :description, :image)
  end


end
