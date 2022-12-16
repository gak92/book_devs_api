require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  describe 'When not sign in GET /index' do
    before(:example) { get '/api/v1/reservations' }
    it 'should returns 401 success' do
      expect(response.status).to eq(401)
    end
  end

  describe 'When sign in GET /index' do
    let(:user) { create(:user) }
    it 'should return 200 success if login' do
      sign_in user
      get '/api/v1/reservations'
      expect(response.status).to eq(200)
    end
  end
end
