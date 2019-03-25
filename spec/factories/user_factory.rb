FactoryBot.define do
  factory :user do
    sequence (:email){ |n| "new#{n}@example.com"}
    password "usineàgaz"
    firt_name "Prénom"
    last_name "Example"
    admin false
  end
end
