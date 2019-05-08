FactoryBot.define do
    sequence(:name) { |n| "#{n}" }

    factory :product do
    name
    price 123.0
    description "Ceci n'est pas une description"
  end

end
