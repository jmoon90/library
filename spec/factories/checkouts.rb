# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkout do
    sequence(:book_id) { |n| "#{n}" }
    available false
  end
end
