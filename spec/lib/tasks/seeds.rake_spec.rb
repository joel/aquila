require 'spec_helper'
require 'rake'

describe 'seeds' do
  include_context 'rake'

  describe 'demo' do
    before { subject.invoke }

    specify('demo data set') do
      vault_request = Vault.where({subdomain: 'demo'})
      expect(vault_request).to be_exists
      vault = vault_request.first
      expect(vault.users.where({email: 'demo@example.com'})).to be_exists
      expect(vault.goldbricks.count).to eq(3)

      subject.invoke # Reset data
      expect(Vault.count).to eq(1)
      expect(User.count).to eq(1)
      expect(Goldbrick.count).to eq(3)
    end

  end
end
