require File.dirname(__FILE__) + '/acceptance_helper'

feature 'normal way' do
  let(:vault)      { create :vault, subdomain: 'me' }
  let(:me)         { create :user, vault: vault }
  let!(:goldbrick) { create :goldbrick, name: 'My Goldbrick', vault: me.vault }

  background { sign_in me }

  scenario 'should render list of goldbricks' do
    visit goldbricks_url(subdomain: me.vault.subdomain)
    expect(page).to have_link goldbrick.name
  end

  scenario 'should render show goldbrick information' do
    visit goldbrick_url(subdomain: me.vault.subdomain, id: goldbrick)
    expect(page).to have_content goldbrick.name
    expect(page).to have_link I18n.t('helpers.links.edit')
  end

  # scenario 'should ...', js: true, focused: true do
  #   Capybara.current_driver = :selenium
  #   visit goldbrick_url(subdomain: me.vault.subdomain, id: goldbrick)
  #   save_and_open_page
  #   expect(page).to have_content goldbrick.name
  #   expect(page).to have_link I18n.t('helpers.links.edit')
  #   # save_and_open_page
  # end

  scenario 'should create new one goldbrick' do
    session = Capybara::Session.new(:rack_test, Aquila::Application)
    session.visit new_goldbrick_url(subdomain: me.vault.subdomain)
    expect(session).to have_content 'New Goldbrick'
    expect(session.current_url).to eq new_goldbrick_url(subdomain: me.vault.subdomain)
    attributes_for(:goldbrick).each do |key, value|
      session.fill_in "goldbrick[#{key}]", with: value
    end
    session.click_button I18n.t('helpers.submit.create')
    # expect( session ).to have_content(
    #   I18n.t('controller.goldbricks.create.success')
    # )
  end

  scenario 'should updated goldbrick' do
    visit edit_goldbrick_url(subdomain: me.vault.subdomain, id: goldbrick)
    # save_and_open_page
    expect(page).to have_content 'Edit Goldbrick'
    expect(current_url).to eq edit_goldbrick_url(subdomain: me.vault.subdomain, id: goldbrick)
    attributes_for(:goldbrick).each do |key, value|
      fill_in "goldbrick[#{key}]", with: value
    end
    click_button 'Update'
    # expect( page ).to have_content(
    #   I18n.t('controller.goldbricks.update.success')
    # )
  end

end
