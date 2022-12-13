require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'john', email: 'john@test.com', password: '1234567')
  end

  before { subject.save }

  it 'should not be valid with nil name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid name' do
    subject.name = 'john'
    expect(subject).to be_valid
  end

  it 'should not be valid with nil email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid email' do
    subject.email = 'john@test.com'
    expect(subject).to be_valid
  end

  it 'should not be valid with nil password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'should have valid password' do
    subject.password = '1234567'
    expect(subject).to be_valid
  end
end
