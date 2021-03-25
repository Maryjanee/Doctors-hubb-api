require 'rails_helper'

RSpec.describe 'doctors', type: :request do
  before :each do
    @user = User.create(username: 'Emjay', email: 'emjay@gmail.com',
                        password: '123456')
  end

  describe 'Request' do
    it 'returns all appointments' do
      post '/api/v1/users', params: { email: @user.email, password: @user.password }
      expect do
        post '/api/v1/appointments',
             params: { appointment:
              { doctor_name: 'May Jones',
                date: '2021-02-26', city: 'New York',
                doctor_id: 2 } }
      end .to change(Appointment, :count).by(+1)
      expect(response).to have_http_status :created
    end
  end
end
