require File.dirname(__FILE__) + '/request_helper'

describe 'Vaults' do
  describe 'GET /vaults' do

    before { login_as create(:user) }

    it 'works! (now write some real specs)' do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get vaults_path
      response.status.should be(200)
    end
  end
end
