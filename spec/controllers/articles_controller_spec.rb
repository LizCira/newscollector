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

    # describe "GET #show" do
    #   it "finds an article by ID and assigns that article to @article" do
    #     article = FactoryGirl.create(:article)
    #     get :show, id: article
    #     assigns(:article).should eq(article)
    #   end
    # end

    describe "POST create" do
        it "creates a new article in database" do
          expect{
            post :create, article: FactoryGirl.attributes_for(:article)
            }.to change(Article,:count).by(1)
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
