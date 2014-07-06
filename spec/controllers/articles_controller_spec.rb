require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do

    describe "GET index" do
      it "assigns all articles as @articles" do
        article = Article.create!
        get :index
        expect(assigns(:articles)).to eq([article])
      end

      it "renders the :index view" do
        get :index
        response.should render_template :index
      end
    end

    describe "POST create" do
        it "creates a new article in database" do
          expect{
            post :create, article: FactoryGirl.attributes_for(:article)
            }.to change(Article,:count).by(1)
          end
        end

  describe 'PUT update' do
    before :each do @article = FactoryGirl.create(:article, title: "News")
    end

    # it "located the requested @article" do
    #   binding.pry
    #   put :update, id: @article, article: FactoryGirl.attributes_for(:article)
    #   assigns(:article).should eq(@article) end

 it "changes @article's attributes" do
  put :update, id:
    @article, article: FactoryGirl.attributes_for(:article, title: "Not news")
    @article.reload
    @article.title.should eq("Not news")
  end

  it "redirects to articles#index" do
    put :update, id: @article, article: FactoryGirl.attributes_for(:article)
    response.should redirect_to root_path
  end

end


    describe 'DELETE destroy' do
      before :each do @article = FactoryGirl.create(:article)
      end

      it "deletes the article from database" do
        expect{ delete :destroy, id: @article }.to change(Article,:count).by(-1)
        end

      it "redirects to articles#index" do
        delete :destroy, id: @article
        response.should redirect_to root_path
       end
      end

end
