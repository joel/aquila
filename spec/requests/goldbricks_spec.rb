require File.dirname(__FILE__) + '/request_helper'
describe "Goldbricks" do
  let(:user) { create :user }
  
  before { login_as user }

  describe "GET /goldbricks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get goldbricks_url(subdomain: user.vault.subdomain)
      response.status.should be(200)
    end
  end
end
