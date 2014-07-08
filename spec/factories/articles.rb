FactoryGirl.define do
  factory :article do |f|
      f.title Faker::Lorem.words(3).to_s
      f.url  Faker::Internet.url.to_s
      f.description "some insightful insights"
      f.image "src a picture"
      f.id 1
  end
end
