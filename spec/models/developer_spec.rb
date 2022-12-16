require 'rails_helper'

RSpec.describe Developer, type: :model do
  before :each do
    @user = User.create(name: 'john3', email: 'john3@test.com', password: '1234567', admin: true)
    @developer = Developer.create(name: 'Dev1', description: '5 year of development experience', image: 'link 1',
                                  title: 'Full Stack Developer', salary_exp: 25_000, rating: 4, user_id: @user.id)
  end

  it 'should be valid' do
    expect(@developer).to be_valid
  end

  it 'should not be valid with nil name' do
    @developer.name = nil
    expect(@developer).to_not be_valid
  end

  it 'should have valid name' do
    @developer.name = 'Dev1'
    expect(@developer).to be_valid
  end

  it 'should not be valid with nil description' do
    @developer.description = nil
    expect(@developer).to_not be_valid
  end

  it 'should have valid description' do
    @developer.description = '5 year of development experience'
    expect(@developer).to be_valid
  end

  it 'should not be valid with nil image' do
    @developer.image = nil
    expect(@developer).to_not be_valid
  end

  it 'should have valid image' do
    @developer.image = 'Link 1'
    expect(@developer).to be_valid
  end

  it 'should not be valid with nil title' do
    @developer.title = nil
    expect(@developer).to_not be_valid
  end

  it 'should have valid title' do
    @developer.title = 'Full Stack Developer'
    expect(@developer).to be_valid
  end

  it 'should not be valid with nil salary_exp' do
    @developer.salary_exp = nil
    expect(@developer).to_not be_valid
  end

  it 'should have valid salary_exp' do
    @developer.salary_exp = 27_000
    expect(@developer).to be_valid
  end

  it 'should not be valid with nil rating' do
    @developer.rating = nil
    expect(@developer).to_not be_valid
  end

  it 'should have valid rating' do
    @developer.rating = 5
    expect(@developer).to be_valid
  end
end
