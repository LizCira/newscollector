require 'rails_helper'
require 'spec_helper'

RSpec.describe Article, :type => :model do

  it "has a valid factory" do
    FactoryGirl.create(:article).should be_valid
  end

  it { should have_many(:comments) }

end
