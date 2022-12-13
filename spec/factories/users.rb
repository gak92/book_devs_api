FactoryBot.define do
  factory :user do
    name { 'John' }
    email { john@test.com }
    password { '1234567' }
    password_confirmation { '1234567' }
  end
end 