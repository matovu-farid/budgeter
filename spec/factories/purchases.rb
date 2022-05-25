FactoryBot.define do
  factory :purchase do
    name { 'name' }
    amount { 1.5 }
    category
    author
  end
end
