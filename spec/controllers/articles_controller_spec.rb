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

    describe "GET #show" do
      it "finds an article by ID and assigns that article to @article" do
        article = FactoryGirl.create(:article)
        get :show, id: article
        assigns(:article).should eq(article)
      end
    end


end
