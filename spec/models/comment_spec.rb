require 'rails_helper'

RSpec.describe Comment, :type => :model do


  it { should belong_to(:article) }
  it { should validate_presence_of(:author) }

  it "has a valid factory" do
    FactoryGirl.create(:comment).should be_valid
  end

end
