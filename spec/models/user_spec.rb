require 'rails_helper'
RSpec.describe User, type: :model do
  subject do
    described_class.new(username: 'Maryjane',
                        email: 'maryjane@mail.com',
                        password: 'password')
  end
  it 'is not valid without a username' do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a correct formatted email' do
    subject.email = 'gmail.com'
    expect(subject).to_not be_valid
  end
end
