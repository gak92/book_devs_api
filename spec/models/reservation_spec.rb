require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before :each do
    @user = User.create(name: 'john4', email: 'john4@test.com', password: '1234567', admin: true)
    @developer = Developer.create(name: 'Dev2', description: '7 year of development experience', image: 'link 1', title: 'Full Stack Developer', salary_exp: 25000, rating: 4, user_id: @user.id)
    @reservation = Reservation.create(name: 'Reservation_01', user_id: @user.id, developer_id: @developer.id, reservation_date: "11-01-2023", city: "Canada")
  end

  it 'should be valid' do
    expect(@reservation).to be_valid
  end

  it 'should not be valid with nil city' do
    @reservation.city = nil
    expect(@reservation).to_not be_valid
  end

  it 'should have valid city' do
    @reservation.name = 'Canada'
    expect(@reservation).to be_valid
  end

  it 'should not be valid with nil reservation_date' do
    @reservation.reservation_date = nil
    expect(@reservation).to_not be_valid
  end

  it 'should have valid reservation_date' do
    @reservation.reservation_date = '11-01-2023'
    expect(@reservation).to be_valid
  end
end
