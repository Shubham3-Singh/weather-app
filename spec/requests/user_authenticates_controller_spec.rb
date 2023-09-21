require 'rails_helper'

RSpec.describe UserAuthenticatesController, type: :controller do
  describe 'POST #create' do
    it 'creates a new user' do
      user_params = { email: 'test@example.com', password: 'password123' }
      
      expect do
        post :create, params: { user_authenticate: user_params }
      end.to change(UserAuthenticate, :count).by(1)
    end

    it 'redirects to login_path after successful registration' do
      user_params = { email: 'test@example.com', password: 'password123' }

      post :create, params: { user_authenticate: user_params }
      expect(response).to redirect_to(login_path)
    end

    it 'renders the new template if registration is unsuccessful' do
      user_params = { email: nil, password: 'password123' }

      post :create, params: { user_authenticate: user_params }
      expect(response).to render_template('new')
    end
  end
end
