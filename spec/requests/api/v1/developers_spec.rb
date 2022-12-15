require 'rails_helper'

RSpec.describe 'Developers', type: :request do
  describe 'When not sign in GET /index' do
    before(:example) { get '/api/v1/developers' }
    it 'should returns 401 success' do
      expect(response.status).to eq(401)
    end
  end

  describe 'When sign in GET /index' do
    let(:user) { create(:user) }
    it 'should return 200 success if login' do
      sign_in user
      get '/api/v1/developers'
      expect(response.status).to eq(200)
    end
  end

  describe 'GET /show' do
    let(:user) { create(:user) }
    let(:developer) { create(:developer) }
    it 'should returns http 200 success' do
      sign_in user
      get "/api/v1/developers/#{developer.id}"
      expect(response.status).to eq(200)
    end
  end

  describe 'when not signed in POST /create' do
    user = User.create(name: 'admin', email: 'admin@test.com', password: '1234567', password_confirmation: '1234567')
    it 'should return unauthorised when user not sign in' do
      @user_id = user.id
      post '/api/v1/developers/', params: {
        developer: {
          name: 'Test Dev1',
          description: '10 Years of experience in development',
          image: 'Image link',
          title: 'Back end Developer',
          salary_exp: 42_000,
          rating: 5,
          user_id: @user_id
        }
      }
      expect(response.status).to eq(401)
    end
  end
end
