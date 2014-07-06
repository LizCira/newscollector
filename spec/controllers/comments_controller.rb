require 'rails_helper'

RSpec.describe CommentsController, :type => :controller do


 describe "POST create" do
      it "creates a new comment in database" do
        expect{
        post :create, comment: FactoryGirl.attributes_for(:comment)
          }.to change(Comment,:count).by(1)
        end
      end


 describe 'DELETE destroy' do
      before :each do
        @comment = FactoryGirl.create(:comment)
         end

      it "deletes the comment from database" do
        expect{ delete :destroy, id: @comment }.to change(Comment,:count).by(-1)
        end

      it "redirects to articles#index" do
        delete :destroy, id: @comment
        response.should redirect_to root_path
        end
      end
end
