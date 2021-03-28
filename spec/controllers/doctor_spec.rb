require 'rails_helper'

RSpec.describe 'doctors', type: :request do
  before :each do
    @user = User.create(username: 'Emjay', email: 'emjay@gmail.com',
                        password: '123456')
    @doctor = Doctor.create(name: 'John Maxwell',
                            location: 'Lagos, Nigeria',
                            specialization: 'Ophtamology',
                            fees: '25000',
                            email: 'johnmaxwell@gmail.com',
                            about: 'A Consultant Ear, Nose & Throat Surgeon with
  over 27 years clinical experience in treating and
 managing various ear, nose and throat infections.',
                            photo: 'https://www.pic.jpg')
  end

  describe 'Request' do
    it 'returns all doctors' do
      post '/api/v1/users', params: { email: @user.email, password: @user.password }
      get '/api/v1/doctors'
      expect(response).to have_http_status :ok
    end

    it 'returns specific doctor' do
      post '/api/v1/users', params: { email: @user.email, password: @user.password }
      get "/api/v1/doctors/#{@doctor.id}"
      expect(response).to have_http_status :ok
    end
  end
end
