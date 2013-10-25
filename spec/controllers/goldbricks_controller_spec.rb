require 'spec_helper'

describe GoldbricksController do

  before { sign_in create(:user) }

  # This should return the minimal set of attributes required to create a valid
  # Goldbrick. As you add validations to Goldbrick, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GoldbricksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  let(:vault) { create :vault }
  before { controller.stub current_vault: vault }

  describe "GET index" do
    it "assigns all goldbricks as @goldbricks" do
      goldbrick = vault.goldbricks.create! valid_attributes
      get :index, {}, valid_session
      assigns(:goldbricks).should eq([goldbrick])
    end
  end

  describe "GET show" do
    it "assigns the requested goldbrick as @goldbrick" do
      goldbrick = vault.goldbricks.create! valid_attributes
      get :show, {:id => goldbrick.to_param}, valid_session
      assigns(:goldbrick).should eq(goldbrick)
    end
  end

  describe "GET new" do
    it "assigns a new goldbrick as @goldbrick" do
      get :new, {}, valid_session
      assigns(:goldbrick).should be_a_new(Goldbrick)
    end
  end

  describe "GET edit" do
    it "assigns the requested goldbrick as @goldbrick" do
      goldbrick = vault.goldbricks.create! valid_attributes
      get :edit, {:id => goldbrick.to_param}, valid_session
      assigns(:goldbrick).should eq(goldbrick)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Goldbrick" do
        expect {
          post :create, {:goldbrick => valid_attributes}, valid_session
        }.to change(Goldbrick, :count).by(1)
      end

      it "assigns a newly created goldbrick as @goldbrick" do
        post :create, {:goldbrick => valid_attributes}, valid_session
        assigns(:goldbrick).should be_a(Goldbrick)
        assigns(:goldbrick).should be_persisted
      end

      it "redirects to the created goldbrick" do
        post :create, {:goldbrick => valid_attributes}, valid_session
        response.should redirect_to(Goldbrick.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved goldbrick as @goldbrick" do
        # Trigger the behavior that occurs when invalid params are submitted
        Goldbrick.any_instance.stub(:save).and_return(false)
        post :create, {:goldbrick => { "name" => "invalid value" }}, valid_session
        assigns(:goldbrick).should be_a_new(Goldbrick)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Goldbrick.any_instance.stub(:save).and_return(false)
        post :create, {:goldbrick => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested goldbrick" do
        goldbrick = vault.goldbricks.create! valid_attributes
        # Assuming there are no other goldbricks in the database, this
        # specifies that the Goldbrick created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Goldbrick.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => goldbrick.to_param, :goldbrick => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested goldbrick as @goldbrick" do
        goldbrick = vault.goldbricks.create! valid_attributes
        put :update, {:id => goldbrick.to_param, :goldbrick => valid_attributes}, valid_session
        assigns(:goldbrick).should eq(goldbrick)
      end

      it "redirects to the goldbrick" do
        goldbrick = vault.goldbricks.create! valid_attributes
        put :update, {:id => goldbrick.to_param, :goldbrick => valid_attributes}, valid_session
        response.should redirect_to(goldbrick)
      end
    end

    describe "with invalid params" do
      it "assigns the goldbrick as @goldbrick" do
        goldbrick = vault.goldbricks.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Goldbrick.any_instance.stub(:save).and_return(false)
        put :update, {:id => goldbrick.to_param, :goldbrick => { "name" => "invalid value" }}, valid_session
        assigns(:goldbrick).should eq(goldbrick)
      end

      it "re-renders the 'edit' template" do
        goldbrick = vault.goldbricks.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Goldbrick.any_instance.stub(:save).and_return(false)
        put :update, {:id => goldbrick.to_param, :goldbrick => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested goldbrick" do
      goldbrick = vault.goldbricks.create! valid_attributes
      expect {
        delete :destroy, {:id => goldbrick.to_param}, valid_session
      }.to change(Goldbrick, :count).by(-1)
    end

    it "redirects to the goldbricks list" do
      goldbrick = vault.goldbricks.create! valid_attributes
      delete :destroy, {:id => goldbrick.to_param}, valid_session
      response.should redirect_to(goldbricks_url)
    end
  end

end
