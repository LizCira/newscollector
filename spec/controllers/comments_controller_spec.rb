require 'rails_helper'

RSpec.describe CommentsController, :type => :controller do

    # before(:each) do
    #   @article = FactoryGirl.create(:article)
    #   @comment = FactoryGirl.create(:comment, article_id: @article.id)
    # end

 describe "POST create" do

    before(:each) do
      @article = FactoryGirl.create(:article)
      @comment = FactoryGirl.create(:comment, article_id: @article.id)
    end

    it "creates a new comment in database" do
      all_comments = Comment.all.length
      post :create, {:article_id => @article.id, comment:{ comment_text: "hellow, world", author: "me"} }
      expect(Comment.all.length).to be(all_comments+1)
    end
  end

 describe 'DELETE destroy' do
     before(:each) do
      @article = FactoryGirl.create(:article)
      @comment = FactoryGirl.create(:comment, article_id: @article.id)
      @comment2 = FactoryGirl.create(:comment, article_id: @article.id)
     end

    it "deletes a comment in database" do
      all_comments = Comment.all.length
      # binding.pry
      delete :destroy, {:article_id => @article.id, comment:{ id: @comment.id, comment_text: "hellow, world", author: "me"} }
      expect(Comment.all.length).to be(all_comments-1)
    end

      # it "redirects to articles#index" do
      #   delete :destroy, id: @comment
      #   response.should redirect_to root_path
      #   end
      end
end
