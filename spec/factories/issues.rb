FactoryGirl.define do
  factory :issue do
    sequence(:title) { |n| "Issue #{n}" }
    address "123 Main St"
    city "Boston"
    state "MA"
    year "1993"

    magazine
  end
end
