FactoryGirl.define do
  factory :thought do
    sequence(:title) { |n| "Idea_#{n}" }
    description { "#{title}_description" }
    quality 0
    user nil
  end
end
