FactoryGirl.define do
  factory :user do
    email "email@example.com"
    password "123123"
    password_confirmation { "123123" }
  end
end
