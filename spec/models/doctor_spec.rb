require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject do
    described_class.new(name: 'John Maxwell',
                        location: 'Lagos, Nigeria',
                        specialization: 'Ophtamology',
                        fees: '25000',
                        email: 'johnmaxwell@gmail.com',
                        about: 'Throat Surgeon with over 27 years clinical
                             experience in treating and managing various ear, nose
                             and throat infections.',
                        photo: 'https://pic.jpg')
  end
  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a location' do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a correct formatted email' do
    subject.fees = nil
    expect(subject).to_not be_valid
  end
end
