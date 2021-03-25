require 'rails_helper'

RSpec.describe 'Users', type: 'request' do
  describe 'POST /api/v1/users' do
    context 'with valid parameters' do
      let(:valid_params) do
        {
          username: 'Maryjane',
          email: 'maryjane@mail.com',
          password: '123password'
        }
      end
      it 'creates a new user' do
        expect { post '/api/v1/users', params: valid_params }.to change(User, :count).by(+1)
        expect(response).to have_http_status :created
      end
    end

    it 'creates a does not create new user' do
      expect do
        post '/api/v1/users', params: { username: 'Maryjane',
                                        email: 'maryjane.com',
                                        password: '123password' }
      end .to change(User, :count).by(0)
    end
  end
end
