FactoryGirl.define do
  factory :user do |i|
    email "user_#{i}@example.com"
    password_digest "MyString"
  end
end
