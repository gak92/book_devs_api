FactoryBot.define do
  factory :reservation do
    reservation_date { '11-01-2023' }
    city { 'USA' }
    user { create(:user) }
    developer { create(:developer) }
  end
end
