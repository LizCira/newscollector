class CommentsController < ApplicationController

  def create
    Comment.create(comment_attributes)
    redirect_to root_path
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def comment_attributes
    params.require(:comment).permit(:comment_text, :author, :article_id, :id)
  end

end
