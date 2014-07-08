FactoryGirl.define do
  factory :comment do |f|
      f.comment_text Faker::Lorem.words(5).to_s
      f.author  Faker::Name.name.to_s
      f.article_id 1
  end
end
