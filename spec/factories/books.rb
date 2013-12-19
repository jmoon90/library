FactoryGirl.define do
  factory :book do
    sequence(:title) { |n| "Hunger Games #{n}" }
    sequence(:rating) { |n|  88 + n }
    author "Suzanne Collins"
  end
end
