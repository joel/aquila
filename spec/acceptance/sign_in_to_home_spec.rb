require 'spec_helper'

feature 'sign in/up' do
  let(:user) { build :user }

  scenario 'redirects to patient home for a patient' do
    visit new_user_registration_path
    fill_in 'user_vault_attributes_subdomain', with: user.vault.subdomain
    fill_in 'user_email',    with: user.email
    fill_in 'user_password', with: user.password
    click_button I18n.t('devise.registrations.new.sign_up')
    # current_path.should eql goldbricks_url(subdomain: user.vault.subdomain)
  end
end

feature 'sign in/up' do
  let(:goldbrick) { build :goldbrick }

  scenario 'Anonymous must sign in or register to acces' do
    visit goldbricks_url(subdomain: goldbrick.vault.subdomain) # http://foo.lvh.me:3000/goldbricks
    current_path.should eql new_user_session_path
  end
end
