require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UsersController do
  let(:user)  { create :user }
  let(:vault) { user.vault }

  before do
    sign_in create(:user)
    allow(controller).to receive(:current_vault) { vault }
  end

  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let(:valid_create_attributes) { attributes_for(:user) }
  let(:valid_attributes) { { email: generate(:email) } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all users as @users" do
      get :index, {}, valid_session
      expect(assigns(:users)).to eq([user])
    end
  end

  describe "GET show" do
    it "assigns the requested user as @user" do
      user = vault.users.create! valid_create_attributes
      get :show, { :id => user.to_param }, valid_session
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "GET edit" do
    it "assigns the requested user as @user" do
      user = vault.users.create! valid_create_attributes
      get :edit, {:id => user.to_param}, valid_session
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user" do
        user = vault.users.create! valid_create_attributes
        # Assuming there are no other users in the database, this
        # specifies that the User created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        allow_any_instance_of(User).to receive(:update).and_return({ "name" => "MyString" })
        put :update, {:id => user.to_param, :user => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested user as @user" do
        user = vault.users.create! valid_create_attributes
        put :update, {:id => user.to_param, :user => valid_attributes}, valid_session
        expect(assigns(:user)).to eq(user)
      end

      it "redirects to the user" do
        user = vault.users.create! valid_create_attributes
        put :update, {:id => user.to_param, :user => valid_attributes}, valid_session
        expect(response).to redirect_to(user)
      end
    end

    describe "with invalid params" do
      it "assigns the user as @user" do
        user = vault.users.create! valid_create_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(User).to receive(:save).and_return(false)
        put :update, {:id => user.to_param, :user => { "name" => "invalid value" }}, valid_session
        expect(assigns(:user)).to eq(user)
      end

      it "re-renders the 'edit' template" do
        user = vault.users.create! valid_create_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(User).to receive(:save).and_return(false)
        put :update, {:id => user.to_param, :user => { "name" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do

    it 'forbidden remove last user' do
      expect(vault.users.count).to eql 1
      expect {
        delete :destroy, { :id => user.to_param }, valid_session
      }.to_not change(User, :count)
    end

    it "destroys the requested user" do
      user = vault.users.create! valid_create_attributes
      expect {
        delete :destroy, {:id => user.to_param}, valid_session
      }.to change(User, :count).by(-1)
    end

    it "redirects to the users list" do
      user = vault.users.create! valid_create_attributes
      delete :destroy, {:id => user.to_param}, valid_session
      expect(response).to redirect_to(users_url)
    end
  end

end
