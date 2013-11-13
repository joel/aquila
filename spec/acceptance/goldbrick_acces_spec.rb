require File.dirname(__FILE__) + '/acceptance_helper'

feature 'sign in/up' do
  let!(:user) { create :user }
  let(:legitime_goldbrick) { create :goldbrick, name: 'legitime_goldbrick', vault: user.vault }
  let(:forbiden_goldbrick) { create :goldbrick, name: 'forbiden_goldbrick' }

  before { login_as user }

  scenario 'should have acces to your own goldbricks' do
    visit goldbricks_url(subdomain: legitime_goldbrick.vault.subdomain)
    page.should have_link legitime_goldbrick.name
    page.should_not have_link forbiden_goldbrick.name
  end

  # scenario 'should not have acces to foreigner goldbricks', pending: true do
  #   expect { visit goldbricks_url(subdomain: forbiden_goldbrick.vault.subdomain) }.to raise_error
  # end
end
