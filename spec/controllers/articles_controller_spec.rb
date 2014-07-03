require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do

    describe "GET index" do
    it "assigns all articles as @articles" do
      article = Article.create!
      get :index
      expect(assigns(:articles)).to eq([article])
    end
  end

end
