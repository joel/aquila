require 'spec_helper'

describe Devise::RegistrationsController, pending: true do
  let(:user) { build :user }

  let(:valid_session) { {} }

  let(:valid_attributes) do
    { email: FactoryGirl.generate(:email), password: 'secret', password_confirmation: 'secret',
      vault: { subdomain: FactoryGirl.generate(:subdomain) } }
  end

  describe 'GET new' do
    it 'assigns a new user as @user' do
      get :new, {}, valid_session
      assigns(:user).should be_a_new(User)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new User' do
        expect {
          post :create, {:user => valid_attributes }, valid_session
        }.to change(User, :count).by(1)
      end

      it 'assigns a newly created user as @user' do
        post :create, {:user => valid_attributes}, valid_session
        assigns(:user).should be_a(User)
        assigns(:user).should be_persisted
      end

      it 'redirects to the created user' do
        post :create, {:user => valid_attributes}, valid_session
        response.should redirect_to(User.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved user as @user' do
        # Trigger the behavior that occurs when invalid params are submitted
        User.any_instance.stub(:save).and_return(false)
        post :create, {:user => { 'name' => 'invalid value' }}, valid_session
        assigns(:user).should be_a_new(User)
      end

      it 're-renders the \'new\' template' do
        # Trigger the behavior that occurs when invalid params are submitted
        User.any_instance.stub(:save).and_return(false)
        post :create, {:user => { 'name' => 'invalid value' }}, valid_session
        response.should render_template('new')
      end
    end
  end

end
