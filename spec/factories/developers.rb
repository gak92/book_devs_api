FactoryBot.define do
  factory :developer do
    name: { 'Factory Dev1' } 
    description: { '7 year of development experience' }
    image: { 'link Factory' }
    title: { 'Full Stack Developer' }
    salary_exp: { 40000 }
    rating: { 5 }
    user { create(:user) }
  end
end
