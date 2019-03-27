FactoryBot.define do
  sequence(:email) {|n| "user#{n}@example.com"}
  factory :user do
    email
    password "usineàgaz"
    firt_name "Prénom"
    last_name "Example"
    admin false
  end
end
