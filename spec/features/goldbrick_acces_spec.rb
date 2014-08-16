require File.dirname(__FILE__) + '/acceptance_helper'

feature 'sign in/up' do
  let(:legitime_user)        { create :user, name: "Legitime User #{rand(10000)}" }
  let(:forbidden_user)       { create :user, name: "Forbidden User #{rand(10000)}" }
  let!(:legitime_goldbrick)  { create :goldbrick, name: 'legitime_goldbrick', vault: legitime_user.vault }
  let!(:forbidden_goldbrick) { create :goldbrick, name: 'forbidden_goldbrick', vault: forbidden_user.vault }

  before { sign_in legitime_user }

  scenario 'should have acces to your own goldbricks' do
    visit goldbricks_url(subdomain: legitime_user.vault.subdomain)
    expect(page).to have_link legitime_goldbrick.name
    expect(page).to_not have_link forbidden_goldbrick.name
  end

  scenario 'should not have acces to foreigner goldbricks' do
    expect { visit goldbricks_url(subdomain: forbidden_user.vault.subdomain) }.to raise_error
    # visit goldbricks_url(subdomain: forbidden_user.vault.subdomain)
    # expect(page).to have_text('Forbidden.')
  end
end
