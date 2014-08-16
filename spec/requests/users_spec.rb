require 'spec_helper'

describe "Users" do
  let(:user) { create :user }

  before { login_as user }

  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_url(subdomain: user.vault.subdomain)
      expect(response.status).to be(200)
    end
  end
end
