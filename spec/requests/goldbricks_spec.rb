require 'spec_helper'

describe "Goldbricks", pending: true do
  let(:vault) { create :vault }
  before { controller.stub current_vault: vault }

  describe "GET /goldbricks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get goldbricks_path
      response.status.should be(200)
    end
  end
end
